
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PIN_PB (int) ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int ads7843_get_pendown_state(void)
{
 return !gpio_get_value(GPIO_PIN_PB(3));
}
