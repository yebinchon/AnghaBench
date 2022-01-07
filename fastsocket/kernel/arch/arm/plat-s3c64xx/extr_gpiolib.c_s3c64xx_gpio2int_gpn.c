
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int IRQ_EINT (int ) ;

int s3c64xx_gpio2int_gpn(struct gpio_chip *chip, unsigned pin)
{
 return IRQ_EINT(0) + pin;
}
