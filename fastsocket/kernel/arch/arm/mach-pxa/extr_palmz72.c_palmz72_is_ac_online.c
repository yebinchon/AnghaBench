
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_NR_PALMZ72_POWER_DETECT ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int palmz72_is_ac_online(void)
{
 return gpio_get_value(GPIO_NR_PALMZ72_POWER_DETECT);
}
