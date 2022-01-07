
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int safe_halt () ;

__attribute__((used)) static void default_idle(void)
{
 local_irq_disable();
 if (!need_resched())
  safe_halt();
 else
  local_irq_enable();
}
