
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int GEDR ;
 unsigned int IRQ_GPIO11 ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static void
sa1100_high_gpio_handler(unsigned int irq, struct irq_desc *desc)
{
 unsigned int mask;

 mask = GEDR & 0xfffff800;
 do {




  GEDR = mask;

  irq = IRQ_GPIO11;
  mask >>= 11;
  do {
   if (mask & 1)
    generic_handle_irq(irq);
   mask >>= 1;
   irq++;
  } while (mask);

  mask = GEDR & 0xfffff800;
 } while (mask);
}
