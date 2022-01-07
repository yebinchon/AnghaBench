
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h8300_disable_irq_pin (unsigned int) ;
 scalar_t__ is_ext_irq (unsigned int) ;

__attribute__((used)) static void h8300_shutdown_irq(unsigned int irq)
{
 if (is_ext_irq(irq))
  h8300_disable_irq_pin(irq);
}
