
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int IRQ_EINT0 ;
 int IRQ_EINT4 ;

__attribute__((used)) static int s3c24xx_gpiolib_bankf_toirq(struct gpio_chip *chip, unsigned offset)
{
 if (offset < 4)
  return IRQ_EINT0 + offset;

 if (offset < 8)
  return IRQ_EINT4 + offset - 4;

 return -EINVAL;
}
