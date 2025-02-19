
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct bcma_drv_cc {int dummy; } ;


 int bcma_chipco_gpio_in (struct bcma_drv_cc*,int) ;
 struct bcma_drv_cc* bcma_gpio_get_cc (struct gpio_chip*) ;

__attribute__((used)) static int bcma_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
{
 struct bcma_drv_cc *cc = bcma_gpio_get_cc(chip);

 return !!bcma_chipco_gpio_in(cc, 1 << gpio);
}
