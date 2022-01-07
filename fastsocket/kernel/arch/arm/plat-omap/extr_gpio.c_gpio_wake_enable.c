
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int dummy; } ;


 int ENODEV ;
 unsigned int IH_GPIO_BASE ;
 int _set_gpio_wakeup (struct gpio_bank*,int ,unsigned int) ;
 scalar_t__ check_gpio (unsigned int) ;
 int get_gpio_index (unsigned int) ;
 struct gpio_bank* get_irq_chip_data (unsigned int) ;

__attribute__((used)) static int gpio_wake_enable(unsigned int irq, unsigned int enable)
{
 unsigned int gpio = irq - IH_GPIO_BASE;
 struct gpio_bank *bank;
 int retval;

 if (check_gpio(gpio) < 0)
  return -ENODEV;
 bank = get_irq_chip_data(irq);
 retval = _set_gpio_wakeup(bank, get_gpio_index(gpio), enable);

 return retval;
}
