
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ can_do_pal_halt ;
 int cpu_relax () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int safe_halt () ;

void
default_idle (void)
{
 local_irq_enable();
 while (!need_resched()) {
  if (can_do_pal_halt) {
   local_irq_disable();
   if (!need_resched()) {
    safe_halt();
   }
   local_irq_enable();
  } else
   cpu_relax();
 }
}
