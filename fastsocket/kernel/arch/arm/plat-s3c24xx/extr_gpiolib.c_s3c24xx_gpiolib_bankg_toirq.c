
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int IRQ_EINT8 ;

__attribute__((used)) static int s3c24xx_gpiolib_bankg_toirq(struct gpio_chip *chip, unsigned offset)
{
 return IRQ_EINT8 + offset;
}
