-- Return to Window Functions!
-- BASIC SYNTAX
-- SELECT <aggregator> OVER(PARTITION BY <col1> ORDER BY <col2>)
-- PARTITION BY (like GROUP BY) a column to do the aggregation within particular category in <col1>
-- Choose what order to apply the aggregator over (if it's a type of RANK)
-- Example SELECT SUM(sales) OVER(PARTITION BY department)
-- Feel free to google RANK examples too.
select customerid,country,sum(unitprice) as total from customer
RANK(unitprice), 
OVER (
    [PARTITION BY customerid,country,total]
    ORDER BY unitprice[DESC]
)
CREATE TABLE rank_s(
    col CHAR
);
    
INSERT INTO rank_s(col)
VALUES('1'),('2'),('3'),('4'),('5'),('6'),('7'),('8');
    
select customerid,country,sum(unitprice)   
FROM order_details;
    


-- Return a list of all customers, RANKED in order from highest to lowest total spendings
-- WITHIN the country they live in.
-- HINT: find a way to join the order_details, products, and customers tables


-- Return the same list as before, but with only the top 3 customers in each country.





