
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSR0_PDM_BUS_SLEEP ;
 int __power_switch_wake_check () ;
 int __power_switch_wake_cleanup () ;
 int __power_switch_wake_setup () ;
 int __set_LEDS (int) ;
 int frv_cpu_suspend (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

int pm_do_bus_sleep(void)
{
 local_irq_disable();






 __power_switch_wake_setup();

 __set_LEDS(0xa1);







 do {
  frv_cpu_suspend(HSR0_PDM_BUS_SLEEP);
 } while (__power_switch_wake_check && !__power_switch_wake_check());

 __set_LEDS(0xa2);





 __power_switch_wake_cleanup();

 local_irq_enable();

 return 0;
}
