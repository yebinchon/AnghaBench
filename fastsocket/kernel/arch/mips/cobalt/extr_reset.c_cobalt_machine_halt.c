
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_FULL ;
 int cpu_wait () ;
 int led_trigger_event (int ,int ) ;
 int local_irq_disable () ;
 int power_off_led_trigger ;

void cobalt_machine_halt(void)
{



 led_trigger_event(power_off_led_trigger, LED_FULL);

 local_irq_disable();
 while (1) {
  if (cpu_wait)
   cpu_wait();
 }
}
