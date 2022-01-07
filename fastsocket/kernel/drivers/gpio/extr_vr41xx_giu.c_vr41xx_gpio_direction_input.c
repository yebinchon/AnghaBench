
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_INPUT ;
 int giu_set_direction (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int vr41xx_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 return giu_set_direction(chip, offset, GPIO_INPUT);
}
