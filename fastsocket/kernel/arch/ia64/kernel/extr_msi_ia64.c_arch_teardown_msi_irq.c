
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void ia64_teardown_msi_irq (unsigned int) ;
 void platform_teardown_msi_irq (unsigned int) ;

void arch_teardown_msi_irq(unsigned int irq)
{
 if (platform_teardown_msi_irq)
  return platform_teardown_msi_irq(irq);

 return ia64_teardown_msi_irq(irq);
}
