
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_9__ {unsigned int gpio_cd; int dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int dev; } ;


 TYPE_4__* mmc ;
 int twl4030_mmc_init (TYPE_4__*) ;
 TYPE_3__ zoom2_vmmc1_supply ;
 TYPE_2__ zoom2_vmmc2_supply ;
 TYPE_1__ zoom2_vsim_supply ;

__attribute__((used)) static int zoom2_twl_gpio_setup(struct device *dev,
  unsigned gpio, unsigned ngpio)
{



 mmc[0].gpio_cd = gpio + 0;
 mmc[1].gpio_cd = gpio + 1;
 twl4030_mmc_init(mmc);




 zoom2_vmmc1_supply.dev = mmc[0].dev;
 zoom2_vsim_supply.dev = mmc[0].dev;
 zoom2_vmmc2_supply.dev = mmc[1].dev;

 return 0;
}
