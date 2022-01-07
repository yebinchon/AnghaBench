
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int dummy; } ;


 int IRQ_TYPE_NONE ;
 int _clear_gpio_irqstatus (struct gpio_bank*,int) ;
 int _set_gpio_direction (struct gpio_bank*,int ,int) ;
 int _set_gpio_irqenable (struct gpio_bank*,int,int ) ;
 int _set_gpio_triggering (struct gpio_bank*,int ,int ) ;
 int get_gpio_index (int) ;

__attribute__((used)) static void _reset_gpio(struct gpio_bank *bank, int gpio)
{
 _set_gpio_direction(bank, get_gpio_index(gpio), 1);
 _set_gpio_irqenable(bank, gpio, 0);
 _clear_gpio_irqstatus(bank, gpio);
 _set_gpio_triggering(bank, get_gpio_index(gpio), IRQ_TYPE_NONE);
}
