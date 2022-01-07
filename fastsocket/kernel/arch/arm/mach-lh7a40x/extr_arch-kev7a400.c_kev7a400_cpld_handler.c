
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int dummy; } ;


 int CPLD_LATCHED_INTS ;
 unsigned int IRQ_KEV7A400_CPLD ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static void kev7a400_cpld_handler (unsigned int irq, struct irq_desc *desc)
{
 u32 mask = CPLD_LATCHED_INTS;
 irq = IRQ_KEV7A400_CPLD;
 for (; mask; mask >>= 1, ++irq)
  if (mask & 1)
   generic_handle_irq(irq);
}
