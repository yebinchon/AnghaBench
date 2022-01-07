
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;


 int ia64_do_show_stack (struct unw_frame_info*,int *) ;
 int unw_init_from_blocked_task (struct unw_frame_info*,struct task_struct*) ;
 int unw_init_running (int (*) (struct unw_frame_info*,int *),int *) ;

void
show_stack (struct task_struct *task, unsigned long *sp)
{
 if (!task)
  unw_init_running(ia64_do_show_stack, ((void*)0));
 else {
  struct unw_frame_info info;

  unw_init_from_blocked_task(&info, task);
  ia64_do_show_stack(&info, ((void*)0));
 }
}
