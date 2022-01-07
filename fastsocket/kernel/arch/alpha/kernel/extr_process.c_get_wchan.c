
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ ksp; } ;
struct TYPE_4__ {TYPE_1__ pcb; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 scalar_t__ in_sched_functions (unsigned long) ;
 TYPE_2__* task_thread_info (struct task_struct*) ;
 unsigned long thread_saved_pc (struct task_struct*) ;

unsigned long
get_wchan(struct task_struct *p)
{
 unsigned long schedule_frame;
 unsigned long pc;
 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;
 pc = thread_saved_pc(p);
 if (in_sched_functions(pc)) {
  schedule_frame = ((unsigned long *)task_thread_info(p)->pcb.ksp)[6];
  return ((unsigned long *)schedule_frame)[12];
 }
 return pc;
}
