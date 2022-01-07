
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_idle () ;
 int local_irq_enable () ;
 int need_resched () ;

__attribute__((used)) static void default_idle(void)
{
 if (!need_resched())
  arch_idle();
 local_irq_enable();
}
