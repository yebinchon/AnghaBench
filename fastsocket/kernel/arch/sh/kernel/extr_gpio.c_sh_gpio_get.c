
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int chip_to_pinmux (struct gpio_chip*) ;
 int sh_gpio_get_value (int ,unsigned int) ;

__attribute__((used)) static int sh_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 return sh_gpio_get_value(chip_to_pinmux(chip), offset);
}
