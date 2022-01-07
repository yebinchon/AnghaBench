
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOSA_GPIO_AC_IN ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static int tosa_power_ac_online(void)
{
 return gpio_get_value(TOSA_GPIO_AC_IN) == 0;
}
