
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {unsigned int gpio_cd; int dev; } ;


 int gpio_direction_output (unsigned int,int ) ;
 int gpio_request (unsigned int,char*) ;
 TYPE_1__* mmc ;
 TYPE_4__ sdp3430_vmmc1_supply ;
 TYPE_3__ sdp3430_vmmc2_supply ;
 TYPE_2__ sdp3430_vsim_supply ;
 int twl4030_mmc_init (TYPE_1__*) ;

__attribute__((used)) static int sdp3430_twl_gpio_setup(struct device *dev,
  unsigned gpio, unsigned ngpio)
{



 mmc[0].gpio_cd = gpio + 0;
 mmc[1].gpio_cd = gpio + 1;
 twl4030_mmc_init(mmc);




 sdp3430_vmmc1_supply.dev = mmc[0].dev;
 sdp3430_vsim_supply.dev = mmc[0].dev;
 sdp3430_vmmc2_supply.dev = mmc[1].dev;


 gpio_request(gpio + 7, "sub_lcd_en_bkl");
 gpio_direction_output(gpio + 7, 0);


 gpio_request(gpio + 15, "sub_lcd_nRST");
 gpio_direction_output(gpio + 15, 0);

 return 0;
}
