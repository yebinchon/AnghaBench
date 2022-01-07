
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int dummy; } ;


 unsigned int IH_GPIO_BASE ;
 int _clear_gpio_irqstatus (struct gpio_bank*,unsigned int) ;
 struct gpio_bank* get_irq_chip_data (unsigned int) ;

__attribute__((used)) static void gpio_ack_irq(unsigned int irq)
{
 unsigned int gpio = irq - IH_GPIO_BASE;
 struct gpio_bank *bank = get_irq_chip_data(irq);

 _clear_gpio_irqstatus(bank, gpio);
}
