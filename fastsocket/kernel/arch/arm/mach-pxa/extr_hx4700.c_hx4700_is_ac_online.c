
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOD9_nAC_IN ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int hx4700_is_ac_online(void)
{
 return !gpio_get_value(GPIOD9_nAC_IN);
}
