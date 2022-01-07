
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ irqs_disabled () ;
 scalar_t__ irqs_disabled_flags (unsigned long) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

__attribute__((used)) static inline void apm_irq_restore(unsigned long flags)
{
 if (irqs_disabled_flags(flags))
  local_irq_disable();
 else if (irqs_disabled())
  local_irq_enable();
}
