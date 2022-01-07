
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 int down_read (int *) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;

__attribute__((used)) static struct mm_struct *take_tasks_mm(struct task_struct *task)
{
 struct mm_struct *mm = get_task_mm(task);
 if (mm)
  down_read(&mm->mmap_sem);
 return mm;
}
