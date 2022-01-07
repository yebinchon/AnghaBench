
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PINID_PWM4 ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int stmp3xxxmmc_get_wp(void)
{
 return gpio_get_value(PINID_PWM4);
}
