
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int mcu_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int mcu_gpio_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
{
 mcu_gpio_set(gc, gpio, val);
 return 0;
}
