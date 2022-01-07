
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int at91_get_gpio_value (int) ;
 int ide_intr (int,void*) ;

irqreturn_t at91_irq_handler(int irq, void *dev_id)
{
 int ntries = 8;
 int pin_val1, pin_val2;


 do {
  pin_val1 = at91_get_gpio_value(irq);
  pin_val2 = at91_get_gpio_value(irq);
 } while (pin_val1 != pin_val2 && --ntries > 0);

 if (pin_val1 == 0 || ntries <= 0)
  return IRQ_HANDLED;

 return ide_intr(irq, dev_id);
}
