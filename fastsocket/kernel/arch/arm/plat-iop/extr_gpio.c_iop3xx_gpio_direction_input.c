
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_IN ;
 int gpio_line_config (unsigned int,int ) ;

__attribute__((used)) static int iop3xx_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
{
 gpio_line_config(gpio, GPIO_IN);
 return 0;
}
