
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extif; int chipco; } ;


 unsigned int BCM47XX_CHIPCO_GPIO_LINES ;
 unsigned int BCM47XX_EXTIF_GPIO_LINES ;
 int clear_bit (unsigned int,int ) ;
 int gpio_in_use ;
 TYPE_1__ ssb_bcm47xx ;
 scalar_t__ ssb_chipco_available (int *) ;
 scalar_t__ ssb_extif_available (int *) ;

void gpio_free(unsigned gpio)
{
 if (ssb_chipco_available(&ssb_bcm47xx.chipco) &&
     ((unsigned)gpio >= BCM47XX_CHIPCO_GPIO_LINES))
  return;

 if (ssb_extif_available(&ssb_bcm47xx.extif) &&
     ((unsigned)gpio >= BCM47XX_EXTIF_GPIO_LINES))
  return;

 clear_bit(gpio, gpio_in_use);
}
