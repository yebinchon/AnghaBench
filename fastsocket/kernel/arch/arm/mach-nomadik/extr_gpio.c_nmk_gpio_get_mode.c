
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int base; } ;
struct nmk_gpio_chip {scalar_t__ addr; TYPE_1__ chip; } ;


 int EINVAL ;
 scalar_t__ NMK_GPIO_AFSLA ;
 scalar_t__ NMK_GPIO_AFSLB ;
 int NMK_GPIO_ALT_A ;
 int NMK_GPIO_ALT_B ;
 int NOMADIK_GPIO_TO_IRQ (int) ;
 struct nmk_gpio_chip* get_irq_chip_data (int ) ;
 int readl (scalar_t__) ;

int nmk_gpio_get_mode(int gpio)
{
 struct nmk_gpio_chip *nmk_chip;
 u32 afunc, bfunc, bit;

 nmk_chip = get_irq_chip_data(NOMADIK_GPIO_TO_IRQ(gpio));
 if (!nmk_chip)
  return -EINVAL;

 bit = 1 << (gpio - nmk_chip->chip.base);

 afunc = readl(nmk_chip->addr + NMK_GPIO_AFSLA) & bit;
 bfunc = readl(nmk_chip->addr + NMK_GPIO_AFSLB) & bit;

 return (afunc ? NMK_GPIO_ALT_A : 0) | (bfunc ? NMK_GPIO_ALT_B : 0);
}
