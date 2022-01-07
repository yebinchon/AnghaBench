
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gpio_line_get (unsigned int) ;

__attribute__((used)) static int iop3xx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
{
 return gpio_line_get(gpio);
}
