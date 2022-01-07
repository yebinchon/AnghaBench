
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int dev; } ;


 TYPE_1__* mmc ;
 TYPE_2__ overo_vmmc1_supply ;
 int twl4030_mmc_init (TYPE_1__*) ;

__attribute__((used)) static int overo_twl_gpio_setup(struct device *dev,
  unsigned gpio, unsigned ngpio)
{
 twl4030_mmc_init(mmc);

 overo_vmmc1_supply.dev = mmc[0].dev;

 return 0;
}
