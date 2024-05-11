Create table If Not Exists Tweets_39(
tweet_id int, 
content varchar(50)
);

Truncate table Tweets_39;

insert into Tweets_39 (tweet_id, content) values ('1', 'Vote for Biden');
insert into Tweets_39 (tweet_id, content) values ('2', 'Let us make America great again!');

SELECT * FROM Tweets_39;

/*
Q. Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in 
the content of the tweet is strictly greater than 15. Return the result table in any order.
The result format is in the following example.

Input: 
Tweets table:
+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |
+----------+----------------------------------+
Output: 
+----------+
| tweet_id |
+----------+
| 2        |
+----------+
Explanation: 
Tweet 1 has length = 14. It is a valid tweet.
Tweet 2 has length = 32. It is an invalid tweet.
*/

# LENGTH() returns the length of the string measured in bytes.
# CHAR_LENGTH() returns the length of the string measured in characters.

SELECT tweet_id 
FROM Tweets_39
WHERE CHAR_LENGTH(content)>15;

SELECT tweet_id 
FROM Tweets_39
WHERE LENGTH(content)>15;
