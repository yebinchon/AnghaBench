
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 void* GPCR ;
 void* GPIO_GPIO (unsigned int) ;
 void* GPSR ;

__attribute__((used)) static void sa1100_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 if (value)
  GPSR = GPIO_GPIO(offset);
 else
  GPCR = GPIO_GPIO(offset);
}
