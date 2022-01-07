
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int hw_led_state ;
 int led_state ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void innovator_leds_event(led_event_t evt)
{
 unsigned long flags;

 local_irq_save(flags);

 switch (evt) {
 case 130:
  hw_led_state = 0;
  led_state = LED_STATE_ENABLED;
  break;

 case 129:
  led_state &= ~LED_STATE_ENABLED;
  hw_led_state = 0;
  break;

 case 139:
  led_state |= LED_STATE_CLAIMED;
  hw_led_state = 0;
  break;

 case 131:
  led_state &= ~LED_STATE_CLAIMED;
  hw_led_state = 0;
  break;
 case 136:
  break;

 case 137:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~0;
  break;

 case 138:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= 0;
  break;

 case 140:
  break;

 case 141:
  break;

 case 132:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~0;
  break;

 case 133:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= 0;
  break;

 default:
  break;
 }

 local_irq_restore(flags);
}
