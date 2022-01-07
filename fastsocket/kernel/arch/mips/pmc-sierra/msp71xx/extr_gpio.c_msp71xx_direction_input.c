
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int MSP71XX_GPIO_INPUT ;
 int msp71xx_set_gpio_mode (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int msp71xx_direction_input(struct gpio_chip *chip, unsigned offset)
{
 return msp71xx_set_gpio_mode(chip, offset, MSP71XX_GPIO_INPUT);
}
