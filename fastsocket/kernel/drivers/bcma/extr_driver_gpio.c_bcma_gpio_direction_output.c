
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct bcma_drv_cc {int dummy; } ;


 int bcma_chipco_gpio_out (struct bcma_drv_cc*,int,int) ;
 int bcma_chipco_gpio_outen (struct bcma_drv_cc*,int,int) ;
 struct bcma_drv_cc* bcma_gpio_get_cc (struct gpio_chip*) ;

__attribute__((used)) static int bcma_gpio_direction_output(struct gpio_chip *chip, unsigned gpio,
          int value)
{
 struct bcma_drv_cc *cc = bcma_gpio_get_cc(chip);

 bcma_chipco_gpio_outen(cc, 1 << gpio, 1 << gpio);
 bcma_chipco_gpio_out(cc, 1 << gpio, value ? 1 << gpio : 0);
 return 0;
}
