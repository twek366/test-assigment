-- Вторая по величине уникальная зарплата

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    OFFSET 1
    LIMIT 1
) AS SecondHighestSalary;

-- Дубли email

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

-- Клиенты без заказов

SELECT c.*
FROM Customers c
LEFT JOIN Orders o
    ON o.customerId = c.id
WHERE o.id IS NULL;
