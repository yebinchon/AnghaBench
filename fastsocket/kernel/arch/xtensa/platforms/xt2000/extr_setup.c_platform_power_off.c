
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_print (int ,char*) ;
 int local_irq_disable () ;

void platform_power_off(void)
{
 led_print (0, "POWEROFF");
 local_irq_disable();
 while (1);
}
