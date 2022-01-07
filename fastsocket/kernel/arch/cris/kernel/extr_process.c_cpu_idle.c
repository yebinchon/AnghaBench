
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void default_idle () ;
 int need_resched () ;
 void pm_idle () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;

void cpu_idle (void)
{

 while (1) {
  while (!need_resched()) {
   void (*idle)(void);





   idle = pm_idle;
   if (!idle)
    idle = default_idle;
   idle();
  }
  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
