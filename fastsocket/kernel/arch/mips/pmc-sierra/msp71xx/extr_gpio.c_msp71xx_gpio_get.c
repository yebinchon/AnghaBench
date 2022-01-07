
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp71xx_gpio_chip {int data_reg; } ;
struct gpio_chip {int dummy; } ;


 int __raw_readl (int ) ;
 struct msp71xx_gpio_chip* to_msp71xx_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int msp71xx_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct msp71xx_gpio_chip *msp_chip = to_msp71xx_gpio_chip(chip);

 return __raw_readl(msp_chip->data_reg) & (1 << offset);
}
