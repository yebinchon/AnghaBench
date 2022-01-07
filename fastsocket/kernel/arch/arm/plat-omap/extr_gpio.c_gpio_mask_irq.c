
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int dummy; } ;


 unsigned int IH_GPIO_BASE ;
 int IRQ_TYPE_NONE ;
 int _set_gpio_irqenable (struct gpio_bank*,unsigned int,int ) ;
 int _set_gpio_triggering (struct gpio_bank*,int ,int ) ;
 int get_gpio_index (unsigned int) ;
 struct gpio_bank* get_irq_chip_data (unsigned int) ;

__attribute__((used)) static void gpio_mask_irq(unsigned int irq)
{
 unsigned int gpio = irq - IH_GPIO_BASE;
 struct gpio_bank *bank = get_irq_chip_data(irq);

 _set_gpio_irqenable(bank, gpio, 0);
 _set_gpio_triggering(bank, get_gpio_index(gpio), IRQ_TYPE_NONE);
}
