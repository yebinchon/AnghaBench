
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* switch_buf; } ;
struct task_struct {scalar_t__ state; TYPE_2__ thread; } ;
struct TYPE_3__ {unsigned long JB_SP; } ;


 scalar_t__ TASK_RUNNING ;
 unsigned long THREAD_SIZE ;
 struct task_struct* current ;
 scalar_t__ in_sched_functions (unsigned long) ;
 scalar_t__ kernel_text_address (unsigned long) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long stack_page, sp, ip;
 bool seen_sched = 0;

 if ((p == ((void*)0)) || (p == current) || (p->state == TASK_RUNNING))
  return 0;

 stack_page = (unsigned long) task_stack_page(p);

 if (stack_page == 0)
  return 0;

 sp = p->thread.switch_buf->JB_SP;




 if (sp < stack_page)
  return 0;

 while (sp < stack_page + THREAD_SIZE) {
  ip = *((unsigned long *) sp);
  if (in_sched_functions(ip))

   seen_sched = 1;
  else if (kernel_text_address(ip) && seen_sched)
   return ip;

  sp += sizeof(unsigned long);
 }

 return 0;
}
