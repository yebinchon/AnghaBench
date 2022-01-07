
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PINID_PWM3 ;
 int PINID_PWM4 ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int mdelay (int) ;
 int mmc_pins ;
 int stmp3xxx_release_pin_group (int *,char*) ;
 int stmp3xxx_request_pin_group (int *,char*) ;

__attribute__((used)) static int stmp3xxxmmc_hw_init_ssp1(void)
{
 int ret;

 ret = stmp3xxx_request_pin_group(&mmc_pins, "mmc");
 if (ret)
  goto out;


 ret = gpio_request(PINID_PWM4, "mmc wp");
 if (ret)
  goto out_wp;

 gpio_direction_input(PINID_PWM4);


 ret = gpio_request(PINID_PWM3, "mmc power");
 if (ret)
  goto out_power;

 gpio_direction_output(PINID_PWM3, 0);
 mdelay(100);

 return 0;

out_power:
 gpio_free(PINID_PWM4);
out_wp:
 stmp3xxx_release_pin_group(&mmc_pins, "mmc");
out:
 return ret;
}
