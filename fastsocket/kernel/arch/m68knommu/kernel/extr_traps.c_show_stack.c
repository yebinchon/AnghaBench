
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __show_stack (struct task_struct*,unsigned long*) ;
 int dump_stack () ;

void show_stack(struct task_struct *task, unsigned long *stack)
{
 if (!stack && !task)
  dump_stack();
 else
  __show_stack(task, stack);
}
