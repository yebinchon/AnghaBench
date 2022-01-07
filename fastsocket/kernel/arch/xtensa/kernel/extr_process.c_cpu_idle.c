
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_enable () ;
 int need_resched () ;
 int platform_idle () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;

void cpu_idle(void)
{
   local_irq_enable();


 while (1) {
  while (!need_resched())
   platform_idle();
  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
