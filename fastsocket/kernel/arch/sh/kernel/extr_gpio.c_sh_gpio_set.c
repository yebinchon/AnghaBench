
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int chip_to_pinmux (struct gpio_chip*) ;
 int sh_gpio_set_value (int ,unsigned int,int) ;

__attribute__((used)) static void sh_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 sh_gpio_set_value(chip_to_pinmux(chip), offset, value);
}
