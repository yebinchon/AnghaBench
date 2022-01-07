
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PINID_PWM3 ;
 int PINID_PWM4 ;
 int gpio_free (int ) ;
 int mmc_pins ;
 int stmp3xxx_release_pin_group (int *,char*) ;

__attribute__((used)) static void stmp3xxxmmc_hw_release_ssp1(void)
{
 gpio_free(PINID_PWM3);
 gpio_free(PINID_PWM4);
 stmp3xxx_release_pin_group(&mmc_pins, "mmc");
}
