
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int led_event_t ;


 int IDLE_LED ;
 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int TIMER_LED ;
 int hw_led_state ;






 int led_state ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mistral_setled () ;

void osk_leds_event(led_event_t evt)
{
 unsigned long flags;
 u16 leds;

 local_irq_save(flags);

 if (!(led_state & LED_STATE_ENABLED) && evt != 130)
  goto done;

 leds = hw_led_state;
 switch (evt) {
 case 130:
  led_state |= LED_STATE_ENABLED;
  hw_led_state = 0;
  leds = ~0;
  break;

 case 134:
 case 129:
  led_state &= ~LED_STATE_ENABLED;
  hw_led_state = 0;
  break;

 case 135:
  led_state |= LED_STATE_CLAIMED;
  hw_led_state = 0;
  leds = ~0;
  break;

 case 131:
  led_state &= ~LED_STATE_CLAIMED;
  hw_led_state = 0;
  break;
 default:
  break;
 }

 leds ^= hw_led_state;

done:
 local_irq_restore(flags);
}
