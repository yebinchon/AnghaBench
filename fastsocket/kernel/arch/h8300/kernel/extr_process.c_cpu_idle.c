
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idle () ;
 int need_resched () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;

void cpu_idle(void)
{
 while (1) {
  while (!need_resched())
   idle();
  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
