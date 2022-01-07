
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_NR_PALMLD_POWER_DETECT ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int palmld_is_ac_online(void)
{
 return gpio_get_value(GPIO_NR_PALMLD_POWER_DETECT);
}
