
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_OUT ;
 int gpio_line_config (unsigned int,int ) ;
 int gpio_line_set (unsigned int,int) ;

__attribute__((used)) static int iop3xx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int level)
{
 gpio_line_set(gpio, level);
 gpio_line_config(gpio, GPIO_OUT);
 return 0;
}
