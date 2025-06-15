
--- creating the database--
CREATE DATABASE SMS;
USE SMS;
--- create the department table--
CREATE TABLE Department(
Department_id int primary key,
Department_name VARCHAR(100) NOT NULL);

-- create the student table--
CREATE TABLE Student(
Student_id int primary key,
Name varchar(100) not null,
Gender ENUM('Male', 'Female', 'Other'),
DOB Date,
Department_id int,
foreign key(Department_id) References Department(Department_id));

--- create the instructors table---
CREATE TABLE Instructors(
Instructor_id int primary key,
Instructor_name Varchar(100) not null,
Department_id int,
foreign key (Department_id) References Department(Department_id));

--- create the courses table---
CREATE TABLE Courses(
Course_id int primary key,
Course_name VARCHAR(100) NOT NULL,
Department_id int,
Instructor_id int,
foreign key (Department_id) References Department(Department_id),
foreign key (Instructor_id) References Instructors(Instructor_id));

--- create the enrollment table---
CREATE TABLE Enrollments(
Enrollment_id int primary key,
Student_id int,
Course_id int,
Grade varchar(2),
foreign key (Student_id) References Student(Student_id),
foreign key (Course_id) References Courses(Course_id));

--- insert values into the department table ---
INSERT INTO Department (Department_id, Department_name)
Values (1, 'Computer Science'),
(2, 'Pharmacology'), (3, 'Biology'), (4, 'Forensic'), (5, 'Mathematics'), (6, 'Anatomy'), (7, 'Pharmacy'),
(8, 'Chemistry'), (9, 'MBBS'), (10, 'Physcis');


--- insert values into student table---
INSERT into Student( Student_id, Name, Gender, DOB, Department_id)
Values (101, 'Ada Lovelace', 'Female', '1999-12-10', 1);

INSERT into Student( Student_id, Name, Gender, DOB, Department_id)
Values
(102, 'Alan Turing', 'Male', '1999-06-23', 1), 
(103, 'Grace Hopper', 'Female', '2001-12-09', 2),
(104, 'Katherine Johnson', 'Female', '2000-08-26', 2),
(105, 'Dennis Ritchie', 'Male', '1998-10-01', 3),
(106, 'Ken Thompson', 'Male', '1999-04-17', 3),
(107, 'Barbara Liskov', 'Female', '2000-11-30', 4),
(108, 'Margaret Hamilton', 'Female', '2001-05-12', 4);

INSERT into Student( Student_id, Name, Gender, DOB, Department_id)
Values
(109, 'Tim Berners-Lee', 'Male', '1999-03-08', 5),
(110, 'Linus Torvalds', 'Male', '1998-12-28', 5),
(111, 'Donald Knuth', 'Male', '2000-07-10', 6),
(112, 'Shafi Goldwasser', 'Female', '2001-09-03', 6),
(113, 'James Gosling', 'Male', '1999-01-14', 7);

INSERT into Student( Student_id, Name, Gender, DOB, Department_id)
Values
(114, 'Frances Allen', 'Female', '2000-04-25', 7),
(115, 'Radia Perlman', 'Female', '2001-02-21', 8), 
(116, 'Benjamin Carson', 'Male', '1999-03-15', 9), 
(117, 'Ngozi Okonjo', 'Female', '2000-06-30', 9);
INSERT into Student( Student_id, Name, Gender, DOB, Department_id)
Values
(118, 'Stephen Hawking', 'Male', '1998-01-08', 10);
INSERT into Student( Student_id, Name, Gender, DOB, Department_id)
Values
(119, 'Chien-Shiung Wu', 'Female', '2001-10-05', 10);
INSERT into Student( Student_id, Name, Gender, DOB, Department_id)
Values
(120, 'Sylvia Imisi', 'Female', '1999-02-21', 10);
select * from Student;

--- insert values into instructors table---
INSERT INTO Instructors( Instructor_id, Instructor_name, Department_id)
Values 
(1, 'Dr. John Doe', 1),
(2, 'Prof. Grace Hopper', 2),
(3, 'Dr. Albert Einstein', 3),
(4, 'Dr. Marie Curie', 4);
INSERT INTO Instructors( Instructor_id, Instructor_name, Department_id)
Values
(5, 'Prof. Chinua Achebe', 5),
(6, 'Dr. Katherine Johnson', 6),
(7, 'Dr. Nnamdi Azikiwe', 7),
(8, 'Prof. Dora Akunyili', 8),
(9, 'Dr. Ben Carson', 9);
INSERT INTO Instructors( Instructor_id, Instructor_name, Department_id)
Values
(10, 'Prof. Stephen Sanchez', 10),
(11, 'Dr. Ruona Gabriel', 1),
(12, 'Dr Cynthia Imisi', 2);

--- insert values into the courses table---
INSERT INTO courses(Course_id, Course_name, Department_id, Instructor_id)
VALUES
  (301, 'Intro to Programming', 1, 1);
  INSERT INTO courses(Course_id, Course_name, Department_id, Instructor_id)
VALUES
  (302, 'Pharmacokinetics', 2, 2);

   INSERT INTO courses(Course_id, Course_name, Department_id, Instructor_id)
VALUES
  (304, 'Intro to forensics', 4, 4),
  (305, 'Intro to Mathematics', 5, 5),
  (306, 'Neuroanatomy', 6, 6),
  (307, 'Toxicology', 7, 8),
  (308, 'Intro to chemistry', 8, 9);
  select * from courses;
  
   INSERT INTO courses(Course_id, Course_name, Department_id, Instructor_id)
VALUES (309, 'Internal medicine', 9, 9),
(310, 'Intro to Physics', 10, 10),
(311, 'Intro to Python', 1, 11),
(312, 'Antihypertensive', 2, 12);
  INSERT INTO courses(Course_id, Course_name, Department_id, Instructor_id)
VALUES (313, 'Adverse Drug Effect', 7, 7);

--- insert values into the enrollment table---

INSERT INTO Enrollments(enrollment_id, student_id, course_id, grade)
VALUES
  (401, 101, 301, 'A'),
  (402, 102, 311, 'B'),
  (403, 103, 312, 'A'),
  (404, 104, 302, 'B'),
  (405, 105, 303, 'C'),
  (406, 106, 303, 'B'),
  (407, 107, 304, 'C'),
  (409, 108, 304, 'D'),
  (410, 109, 305, 'B'),
  (411, 110, 305, 'A'),
  (412, 111, 306, 'C'),
  (413, 112, 306, 'B'),
  (414, 113, 307, 'C'),
  (415, 114, 313, 'B'),
  (416, 115, 308, 'A'),
  (417, 116, 309, 'C'),
  (418, 117, 309, 'D'),
  (419, 118, 310, 'B'),
  (420, 119, 310, 'C'),
  (421, 120, 310, 'A');

  -- queries--
  
  -- How many students are currently enrolled in each course?--
   Select courses.course_id, courses.course_name, count(enrollments.student_id) as enrolled 
   from enrollments 
   join courses  on enrollments.course_id = courses.course_id
   group by courses.course_id, courses.course_name
   order by  enrolled desc;
   
   --- Which students are enrolled in multiple courses, and which courses are they taking? ---

SELECT s.student_id, s.name, COUNT(e.course_id) AS number_of_courses
FROM Student s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.name
HAVING
 COUNT(e.course_id) > 1;
 
 --- What is the total number of students per department across all courses?---
 
 SELECT department.department_id, 
 department.Department_name, 
 count(student.student_id) as total_student
 from Student
 join 
 department on student.department_id = department.department_id
 group by department.Department_name, department.department_id
 order by  total_student desc;
 
 -- Which courses have the highest number of enrollments?--

select
 courses.course_id, 
courses.course_name, 
count(enrollments.student_id) as total_student
from 
Enrollments
join 
courses on  enrollments.course_id = courses.course_id
group by courses.course_id, courses.course_name
order by total_student DESC;

--- Are there any students not enrolled in any course? ---

select student.student_id, student.name
from student
left join 
enrollments on student.student_id = enrollments.student_id
where enrollments.student_id = null;

--- How many courses does each student take on average---

SELECT 
    ROUND(AVG(course_count), 2) AS avg_courses_per_student
FROM (
    SELECT 
        student_id, 
        COUNT(course_id) AS course_count
    FROM 
        Enrollments
    GROUP BY 
        student_id
) AS student_course_counts;

--- What is the gender distribution of students across courses and instructors?--
    
    SELECT
  courses.Course_name,
  student.gender,
  COUNT(*) AS total_students
FROM
  student 
JOIN
  courses  ON student.department_id = courses.department_id
GROUP BY
courses.Course_name,
  student.gender;

--- CREATING A NEW COLUMN IN ENROLLMENT TABLE---
ALTER TABLE Enrollments
Add column Enrollment_date DATE;

--- SETING A DATE THAT CHOOSES RANDOM DATE---

UPDATE enrollments
SET enrollment_date = '2025-01-14'
where enrollment_id = 401;

UPDATE enrollments
SET enrollment_date = '2025-01-20'
where enrollment_id = 402;

UPDATE enrollments
SET enrollment_date = '2025-02-15'
where enrollment_id = 403;
UPDATE enrollments
SET enrollment_date = '2025-02-25'
where enrollment_id = 404;
UPDATE enrollments
SET enrollment_date = '2025-03-14'
where enrollment_id = 405;
UPDATE enrollments
SET enrollment_date = '2025-03-26'
where enrollment_id = 406;
UPDATE enrollments
SET enrollment_date = '2025-04-10'
where enrollment_id = 407;
UPDATE enrollments
SET enrollment_date = '2025-05-14'
where enrollment_id = 408;
UPDATE enrollments
SET enrollment_date = '2025-05-02'
where enrollment_id = 409;
UPDATE enrollments
SET enrollment_date = '2025-06-04'
where enrollment_id = 410;
UPDATE enrollments
SET enrollment_date = '2025-06-17'
where enrollment_id = 411;
UPDATE enrollments
SET enrollment_date = '2025-07-06'
where enrollment_id = 412;
UPDATE enrollments
SET enrollment_date = '2025-07-14'
where enrollment_id = 413;
UPDATE enrollments
SET enrollment_date = '2025-08-19'
where enrollment_id = 414;
UPDATE enrollments
SET enrollment_date = '2025-08-20'
where enrollment_id = 415;
UPDATE enrollments
SET enrollment_date = '2025-08-14'
where enrollment_id = 416;
UPDATE enrollments
SET enrollment_date = '2025-08-14'
where enrollment_id = 417;
UPDATE enrollments
SET enrollment_date = '2025-01-05'
where enrollment_id = 418;
UPDATE enrollments
SET enrollment_date = '2025-02-21'
where enrollment_id = 419;
UPDATE enrollments
SET enrollment_date = '2025-03-14'
where enrollment_id = 420;
UPDATE enrollments
SET enrollment_date = '2025-04-14'
where enrollment_id = 421;

select * from enrollments



