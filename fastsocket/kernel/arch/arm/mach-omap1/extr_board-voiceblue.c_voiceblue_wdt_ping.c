
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACHINE_REBOOT ;
 int gpio_set_value (int ,int) ;
 int machine_state ;
 scalar_t__ test_bit (int ,int *) ;
 int wdt_gpio_state ;

void voiceblue_wdt_ping(void)
{
 if (test_bit(MACHINE_REBOOT, &machine_state))
  return;

 wdt_gpio_state = !wdt_gpio_state;
 gpio_set_value(0, wdt_gpio_state);
}
