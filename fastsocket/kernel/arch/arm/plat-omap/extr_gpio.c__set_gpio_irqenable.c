
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int dummy; } ;


 int _enable_gpio_irqbank (struct gpio_bank*,int,int) ;
 int get_gpio_index (int) ;

__attribute__((used)) static inline void _set_gpio_irqenable(struct gpio_bank *bank, int gpio, int enable)
{
 _enable_gpio_irqbank(bank, 1 << get_gpio_index(gpio), enable);
}
