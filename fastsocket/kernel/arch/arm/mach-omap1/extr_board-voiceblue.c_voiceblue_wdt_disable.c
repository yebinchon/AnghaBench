
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_direction_input (int ) ;
 int gpio_set_value (int ,int) ;

void voiceblue_wdt_disable(void)
{
 gpio_set_value(0, 0);
 gpio_set_value(0, 1);
 gpio_set_value(0, 0);
 gpio_direction_input(0);
}
