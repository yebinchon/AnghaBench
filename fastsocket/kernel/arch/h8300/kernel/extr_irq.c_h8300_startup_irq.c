
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int h8300_enable_irq_pin (unsigned int) ;
 scalar_t__ is_ext_irq (unsigned int) ;

__attribute__((used)) static unsigned int h8300_startup_irq(unsigned int irq)
{
 if (is_ext_irq(irq))
  return h8300_enable_irq_pin(irq);
 else
  return 0;
}
