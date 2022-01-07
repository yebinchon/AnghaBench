
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ri_cb; scalar_t__ ri_signum; } ;
struct task_struct {TYPE_1__ thread; } ;


 struct task_struct* current ;
 int disable_runtime_instr () ;
 int kfree (int *) ;

void exit_thread_runtime_instr(void)
{
 struct task_struct *task = current;

 if (!task->thread.ri_cb)
  return;
 disable_runtime_instr();
 kfree(task->thread.ri_cb);
 task->thread.ri_signum = 0;
 task->thread.ri_cb = ((void*)0);
}
