
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {unsigned int gpio; } ;
struct TYPE_6__ {int gpio_wp; unsigned int gpio_cd; int dev; } ;


 int AG9_34XX_GPIO23 ;
 int AH8_34XX_GPIO29 ;
 unsigned int TWL4030_GPIO_MAX ;
 TYPE_5__ beagle_vmmc1_supply ;
 TYPE_4__ beagle_vsim_supply ;
 int gpio_direction_input (unsigned int) ;
 int gpio_direction_output (unsigned int,int ) ;
 TYPE_3__* gpio_leds ;
 int gpio_request (unsigned int,char*) ;
 TYPE_1__* mmc ;
 int omap_cfg_reg (int ) ;
 int system_rev ;
 int twl4030_mmc_init (TYPE_1__*) ;

__attribute__((used)) static int beagle_twl_gpio_setup(struct device *dev,
  unsigned gpio, unsigned ngpio)
{
 if (system_rev >= 0x20 && system_rev <= 0x34301000) {
  omap_cfg_reg(AG9_34XX_GPIO23);
  mmc[0].gpio_wp = 23;
 } else {
  omap_cfg_reg(AH8_34XX_GPIO29);
 }

 mmc[0].gpio_cd = gpio + 0;
 twl4030_mmc_init(mmc);


 beagle_vmmc1_supply.dev = mmc[0].dev;
 beagle_vsim_supply.dev = mmc[0].dev;





 gpio_request(gpio + 1, "EHCI_nOC");
 gpio_direction_input(gpio + 1);


 gpio_request(gpio + TWL4030_GPIO_MAX, "nEN_USB_PWR");
 gpio_direction_output(gpio + TWL4030_GPIO_MAX, 0);


 gpio_leds[2].gpio = gpio + TWL4030_GPIO_MAX + 1;

 return 0;
}
