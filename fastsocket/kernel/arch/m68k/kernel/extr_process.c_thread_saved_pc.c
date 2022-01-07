
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct switch_stack {unsigned long retpc; scalar_t__ a6; } ;


 scalar_t__ in_sched_functions (unsigned long) ;

unsigned long thread_saved_pc(struct task_struct *tsk)
{
 struct switch_stack *sw = (struct switch_stack *)tsk->thread.ksp;

 if (in_sched_functions(sw->retpc))
  return ((unsigned long *)sw->a6)[1];
 else
  return sw->retpc;
}
