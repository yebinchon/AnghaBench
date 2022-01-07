
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;





 int EINVAL ;
 int MSP_GPIO_REG (unsigned int) ;

__attribute__((used)) static int msp_gpio_in(struct gpio_chip *chip, unsigned offset)
{
 switch (MSP_GPIO_REG(offset)) {
 case 129:
 case 128:
 case 130:
  return 0;
 default:
  return -EINVAL;
 }
}
