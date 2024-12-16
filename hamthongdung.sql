use quanlysinhvien;

-- hien thi so luong sinh vien tung noi
select address, count(studentId) as 'So luong hoc vien'
from student 
group by address;

-- tinh diem trung binh mon hoc cua moi hoc vien
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.studentId = m.studentId
group by
s.studentId, s.studentName;

-- hien thi cac hoc vien co diem trung binh lon hon 15
select s.studentId, s.studentName, avg(mark)
from student s join mark m 
on s.studentId = m.studentId
group by
s.studentId, s.studentName
having avg(mark) > 15;

-- hien thi cac hoc vien co diem trung binh lon nhat
select s.studentId, s.studentName, avg(mark)
from student s join mark m
on s.studentId = m.studentId
group by
s.studentId, s.studentName
having avg(mark) >= all(select avg(mark) from mark group by mark.studentId);