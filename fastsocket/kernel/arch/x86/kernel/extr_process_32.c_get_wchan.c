
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 unsigned long top_ebp ;
 unsigned long top_esp ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long bp, sp, ip;
 unsigned long stack_page;
 int count = 0;
 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;
 stack_page = (unsigned long)task_stack_page(p);
 sp = p->thread.sp;
 if (!stack_page || sp < stack_page || sp > top_esp+stack_page)
  return 0;

 bp = *(unsigned long *) sp;
 do {
  if (bp < stack_page || bp > top_ebp+stack_page)
   return 0;
  ip = *(unsigned long *) (bp+4);
  if (!in_sched_functions(ip))
   return ip;
  bp = *(unsigned long *) bp;
 } while (count++ < 16);
 return 0;
}
