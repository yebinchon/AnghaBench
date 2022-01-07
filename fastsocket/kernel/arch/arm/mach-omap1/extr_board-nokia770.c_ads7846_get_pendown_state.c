
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADS7846_PENDOWN_GPIO ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int ads7846_get_pendown_state(void)
{
 return !gpio_get_value(ADS7846_PENDOWN_GPIO);
}
