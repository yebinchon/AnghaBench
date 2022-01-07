
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int msp_gpio_out (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static void msp_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 msp_gpio_out(chip, offset, value);
}
