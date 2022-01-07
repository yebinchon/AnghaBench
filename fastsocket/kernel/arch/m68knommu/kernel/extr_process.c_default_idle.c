
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;

__attribute__((used)) static void default_idle(void)
{
 local_irq_disable();
  while (!need_resched()) {

   __asm__("stop #0x2000" : : : "cc");
  local_irq_disable();
 }
 local_irq_enable();
}
