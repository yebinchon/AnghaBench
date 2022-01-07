
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_get_value (int ) ;
 int ts_gpio ;

__attribute__((used)) static int ads7846_get_pendown_state(void)
{
 return !gpio_get_value(ts_gpio);
}
