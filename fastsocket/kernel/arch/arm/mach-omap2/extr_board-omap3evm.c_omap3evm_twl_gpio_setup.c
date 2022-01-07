
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_5__ {unsigned int gpio; } ;
struct TYPE_4__ {unsigned int gpio_cd; } ;


 int L8_34XX_GPIO63 ;
 unsigned int TWL4030_GPIO_MAX ;
 TYPE_3__* gpio_leds ;
 int leds_gpio ;
 TYPE_1__* mmc ;
 int omap_cfg_reg (int ) ;
 int platform_device_register (int *) ;
 int twl4030_mmc_init (TYPE_1__*) ;

__attribute__((used)) static int omap3evm_twl_gpio_setup(struct device *dev,
  unsigned gpio, unsigned ngpio)
{

 omap_cfg_reg(L8_34XX_GPIO63);
 mmc[0].gpio_cd = gpio + 0;
 twl4030_mmc_init(mmc);







 gpio_leds[2].gpio = gpio + TWL4030_GPIO_MAX + 1;

 platform_device_register(&leds_gpio);

 return 0;
}
