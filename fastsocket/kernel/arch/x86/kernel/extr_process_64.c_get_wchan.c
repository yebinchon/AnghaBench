
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct TYPE_2__ {unsigned long sp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;


 scalar_t__ TASK_RUNNING ;
 unsigned long THREAD_SIZE ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long stack;
 u64 fp, ip;
 int count = 0;

 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;
 stack = (unsigned long)task_stack_page(p);
 if (p->thread.sp < stack || p->thread.sp >= stack+THREAD_SIZE)
  return 0;
 fp = *(u64 *)(p->thread.sp);
 do {
  if (fp < (unsigned long)stack ||
      fp >= (unsigned long)stack+THREAD_SIZE)
   return 0;
  ip = *(u64 *)(fp+8);
  if (!in_sched_functions(ip))
   return ip;
  fp = *(u64 *)fp;
 } while (count++ < 16);
 return 0;
}
