
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ esp0; } ;
struct task_struct {TYPE_1__ thread; } ;


 int show_stack (struct task_struct*,unsigned long*) ;

void show_trace_task(struct task_struct *tsk)
{
 show_stack(tsk,(unsigned long *)tsk->thread.esp0);
}
