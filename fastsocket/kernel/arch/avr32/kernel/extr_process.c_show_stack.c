
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int show_stack_log_lvl (struct task_struct*,unsigned long,int *,char*) ;

void show_stack(struct task_struct *tsk, unsigned long *stack)
{
 show_stack_log_lvl(tsk, (unsigned long)stack, ((void*)0), "");
}
