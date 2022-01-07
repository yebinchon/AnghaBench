
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_DIR_OUT ;
 int bcm63xx_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int bcm63xx_gpio_set_direction (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int bcm63xx_gpio_direction_output(struct gpio_chip *chip,
      unsigned gpio, int value)
{
 bcm63xx_gpio_set(chip, gpio, value);
 return bcm63xx_gpio_set_direction(chip, gpio, GPIO_DIR_OUT);
}
