
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_direction_output (int ,int ) ;
 int gpio_set_value (int ,int) ;
 scalar_t__ wdt_gpio_state ;

void voiceblue_wdt_enable(void)
{
 gpio_direction_output(0, 0);
 gpio_set_value(0, 1);
 gpio_set_value(0, 0);
 wdt_gpio_state = 0;
}
