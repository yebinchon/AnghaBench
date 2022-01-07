
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_DATA_IN (unsigned int) ;
 int GPIO_IN_POL (unsigned int) ;
 int GPIO_IO_CONF (unsigned int) ;
 int GPIO_OUT (unsigned int) ;
 int readl (int ) ;

__attribute__((used)) static int orion_gpio_get_value(struct gpio_chip *chip, unsigned pin)
{
 int val;

 if (readl(GPIO_IO_CONF(pin)) & (1 << (pin & 31)))
  val = readl(GPIO_DATA_IN(pin)) ^ readl(GPIO_IN_POL(pin));
 else
  val = readl(GPIO_OUT(pin));

 return (val >> (pin & 31)) & 1;
}
