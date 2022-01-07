
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; } ;
struct task_struct {TYPE_1__ thread; } ;


 int PAGE_MASK ;
 int show_trace (unsigned long*) ;

void show_trace_task(struct task_struct *tsk)
{
 unsigned long sp = tsk->thread.sp;


 if ((sp ^ (unsigned long) tsk) & (PAGE_MASK << 1))
  return;

 show_trace((unsigned long *) sp);
}
