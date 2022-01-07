
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_1__ extif; TYPE_2__ chipco; } ;


 int EINVAL ;
 TYPE_3__ ssb_bcm47xx ;
 scalar_t__ ssb_chipco_available (TYPE_2__*) ;
 scalar_t__ ssb_extif_available (TYPE_1__*) ;
 int ssb_mips_irq (int ) ;

int gpio_to_irq(unsigned gpio)
{
 if (ssb_chipco_available(&ssb_bcm47xx.chipco))
  return ssb_mips_irq(ssb_bcm47xx.chipco.dev) + 2;
 else if (ssb_extif_available(&ssb_bcm47xx.extif))
  return ssb_mips_irq(ssb_bcm47xx.extif.dev) + 2;
 else
  return -EINVAL;
}
