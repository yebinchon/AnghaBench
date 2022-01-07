
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gpio_line_set (unsigned int,int) ;

__attribute__((used)) static void iop3xx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
{
 gpio_line_set(gpio, value);
}
