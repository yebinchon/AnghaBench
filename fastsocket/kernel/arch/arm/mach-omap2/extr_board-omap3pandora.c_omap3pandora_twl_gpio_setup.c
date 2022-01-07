
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {unsigned int gpio_cd; int dev; } ;


 TYPE_1__* omap3pandora_mmc ;
 TYPE_3__ pandora_vmmc1_supply ;
 TYPE_2__ pandora_vmmc2_supply ;
 int twl4030_mmc_init (TYPE_1__*) ;

__attribute__((used)) static int omap3pandora_twl_gpio_setup(struct device *dev,
  unsigned gpio, unsigned ngpio)
{

 omap3pandora_mmc[0].gpio_cd = gpio + 0;
 omap3pandora_mmc[1].gpio_cd = gpio + 1;
 twl4030_mmc_init(omap3pandora_mmc);


 pandora_vmmc1_supply.dev = omap3pandora_mmc[0].dev;
 pandora_vmmc2_supply.dev = omap3pandora_mmc[1].dev;

 return 0;
}
