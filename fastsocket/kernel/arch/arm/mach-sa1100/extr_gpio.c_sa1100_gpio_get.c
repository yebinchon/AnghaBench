
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_GPIO (unsigned int) ;
 int GPLR ;

__attribute__((used)) static int sa1100_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 return GPLR & GPIO_GPIO(offset);
}
