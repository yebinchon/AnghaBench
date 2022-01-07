
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int BUG () ;
 scalar_t__ GPIO_BANKSIZE ;

 unsigned int IRQ_PF0 ;
 unsigned int IRQ_PF16 ;
 unsigned int IRQ_PF32 ;
 unsigned int IRQ_PG0 ;
 unsigned int IRQ_PH0 ;







 unsigned int MAX_BLACKFIN_GPIOS ;
 int bfin_handle_irq (unsigned int) ;
 unsigned int get_gpiop_data (unsigned int) ;
 unsigned int get_gpiop_maska (unsigned int) ;
 unsigned int irq_to_gpio (unsigned int) ;

__attribute__((used)) static void bfin_demux_gpio_irq(unsigned int inta_irq,
    struct irq_desc *desc)
{
 unsigned int i, gpio, mask, irq, search = 0;

 switch (inta_irq) {
 default:
  BUG();
  return;
 }

 if (search) {
  for (i = 0; i < MAX_BLACKFIN_GPIOS; i += GPIO_BANKSIZE) {
   irq += i;

   mask = get_gpiop_data(i) & get_gpiop_maska(i);

   while (mask) {
    if (mask & 1)
     bfin_handle_irq(irq);
    irq++;
    mask >>= 1;
   }
  }
 } else {
   gpio = irq_to_gpio(irq);
   mask = get_gpiop_data(gpio) & get_gpiop_maska(gpio);

   do {
    if (mask & 1)
     bfin_handle_irq(irq);
    irq++;
    mask >>= 1;
   } while (mask);
 }

}
