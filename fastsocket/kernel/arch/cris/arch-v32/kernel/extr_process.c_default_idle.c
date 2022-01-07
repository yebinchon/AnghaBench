
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cris_hlt_counter ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;

void default_idle(void)
{
 local_irq_disable();
 if (!need_resched() && !cris_hlt_counter) {

  __asm__ volatile("ei    \n\t"
                                 "halt      ");
 }
 local_irq_enable();
}
