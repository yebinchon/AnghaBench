
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int ks8695_led_off (int ) ;
 int ks8695_led_on (int ) ;
 int ks8695_led_toggle (int ) ;
 int ks8695_leds_cpu ;
 int ks8695_leds_timer ;





 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void ks8695_leds_event(led_event_t evt)
{
 unsigned long flags;

 local_irq_save(flags);

 switch(evt) {
 case 130:
  ks8695_led_on(ks8695_leds_cpu);
  break;

 case 129:
  ks8695_led_off(ks8695_leds_cpu);
  break;
 default:
  break;
 }

 local_irq_restore(flags);
}
