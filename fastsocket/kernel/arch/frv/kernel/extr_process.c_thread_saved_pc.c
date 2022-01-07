
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pc; scalar_t__ fp; } ;
struct task_struct {TYPE_1__ thread; } ;


 scalar_t__ in_sched_functions (unsigned long) ;

unsigned long thread_saved_pc(struct task_struct *tsk)
{

 if (in_sched_functions(tsk->thread.pc))
  return ((unsigned long *)tsk->thread.fp)[2];
 else
  return tsk->thread.pc;
}
