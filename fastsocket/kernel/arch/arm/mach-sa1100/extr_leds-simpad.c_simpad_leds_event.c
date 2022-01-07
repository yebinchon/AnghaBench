
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int LED2_ON ;
 int LED_GREEN ;
 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int clear_cs3_bit (int ) ;
 int hw_led_state ;
 int led_state ;


 int set_cs3_bit (int ) ;

void simpad_leds_event(led_event_t evt)
{
 switch (evt)
 {
 case 130:
         hw_led_state = LED_GREEN;
  led_state = LED_STATE_ENABLED;
  break;

 case 129:
  led_state &= ~LED_STATE_ENABLED;
  break;

 case 139:
  led_state |= LED_STATE_CLAIMED;
  hw_led_state = LED_GREEN;
  break;

 case 131:
  led_state &= ~LED_STATE_CLAIMED;
  hw_led_state = LED_GREEN;
  break;
 case 136:
  break;

 case 137:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= LED_GREEN;
  break;

 case 138:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~LED_GREEN;
  break;

 case 140:
  break;

 case 141:
  break;

 case 132:
  break;

 case 133:
  break;

 default:
  break;
 }

 if (led_state & LED_STATE_ENABLED)
  set_cs3_bit(LED2_ON);
 else
         clear_cs3_bit(LED2_ON);
}
