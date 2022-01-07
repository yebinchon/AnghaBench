
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_frame_info {unsigned long ip; } ;
struct task_struct {scalar_t__ state; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 int unwind_frame_init_from_blocked_task (struct unwind_frame_info*,struct task_struct*) ;
 scalar_t__ unwind_once (struct unwind_frame_info*) ;

unsigned long
get_wchan(struct task_struct *p)
{
 struct unwind_frame_info info;
 unsigned long ip;
 int count = 0;

 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;





 unwind_frame_init_from_blocked_task(&info, p);
 do {
  if (unwind_once(&info) < 0)
   return 0;
  ip = info.ip;
  if (!in_sched_functions(ip))
   return ip;
 } while (count++ < 16);
 return 0;
}
