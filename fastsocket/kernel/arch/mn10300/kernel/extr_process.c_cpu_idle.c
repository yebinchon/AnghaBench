
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle_timestamp; } ;


 void default_idle () ;
 TYPE_1__* irq_stat ;
 int jiffies ;
 int need_resched () ;
 void pm_idle () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int schedule () ;
 int smp_processor_id () ;
 int smp_rmb () ;

void cpu_idle(void)
{
 int cpu = smp_processor_id();


 for (;;) {
  while (!need_resched()) {
   void (*idle)(void);

   smp_rmb();
   idle = pm_idle;
   if (!idle)
    idle = default_idle;

   irq_stat[cpu].idle_timestamp = jiffies;
   idle();
  }

  preempt_enable_no_resched();
  schedule();
  preempt_disable();
 }
}
