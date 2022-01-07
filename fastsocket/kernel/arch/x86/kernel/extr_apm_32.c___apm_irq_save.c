
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ allow_ints; } ;


 TYPE_1__ apm_info ;
 scalar_t__ irqs_disabled_flags (unsigned long) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int local_save_flags (unsigned long) ;

__attribute__((used)) static inline unsigned long __apm_irq_save(void)
{
 unsigned long flags;
 local_save_flags(flags);
 if (apm_info.allow_ints) {
  if (irqs_disabled_flags(flags))
   local_irq_enable();
 } else
  local_irq_disable();

 return flags;
}
