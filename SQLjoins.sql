USE bestbuy;
/* joins: select all the computers from the products table:

using the products table and the categories table, return the product name and the category name */
select products.Name, categories.name from products join categories on products.CategoryID = categories.CategoryID where products.CategoryID = 1;
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select products.Name, products.Price, reviews.Rating from products join reviews on products.ProductID where reviews.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select concat(e.FirstName, " ", e.LastName) as Employee, sum(s.Quantity) As Sales from employees as e join sales as s on e.EmployeeID = s.EmployeeID group by e.EmployeeID order by Sales desc;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.Name as Department, c.Name as Category from categories as c join departments as d on d.DepartmentID = c.DepartmentID where c.Name ="Appliances" or c.Name = "Games";
/* joins: find the product name, total # sold, and total price sold,

 for Eagles: Hotel California --You may need to use SUM() */
select p.name, sum(s.Quantity) as TotalSold, sum(s.Quantity * s.PricePerUnit) as TotalSales from products as p join sales as s on p.productID = s.productID where p.Name = "Eagles: Hotel California";
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select r.Reviewer, r.Rating, r.Comment, p.Name from reviews as r join products as p on r.ProductID = p.ProductID where p.Name = "Visio TV" limit 1;
-- ------------------------------------------ Extra - May be difficult
select e.EmployeeID, e.FirstName, e.LastName, s.Quantity, p.Name from employees as e join sales as s on e.EmployeeID = s.EmployeeID join products as p on s.ProductID = p.ProductID;
/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */