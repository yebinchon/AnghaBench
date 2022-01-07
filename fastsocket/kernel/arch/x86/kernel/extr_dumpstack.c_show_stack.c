
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int show_stack_log_lvl (struct task_struct*,int *,unsigned long*,char*) ;

void show_stack(struct task_struct *task, unsigned long *sp)
{
 show_stack_log_lvl(task, ((void*)0), sp, "");
}
