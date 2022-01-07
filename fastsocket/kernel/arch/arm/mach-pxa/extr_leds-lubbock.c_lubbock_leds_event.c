
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int D21 ;
 int D22 ;
 int D23 ;
 int D26 ;
 int D27 ;
 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int LUB_DISC_BLNK_LED ;
 int hw_led_state ;
 int led_state ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void lubbock_leds_event(led_event_t evt)
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
  hw_led_state |= D21;
  break;

 case 138:
  hw_led_state &= ~D21;
  break;

 case 140:
  hw_led_state |= D22;
  break;

 case 141:
  hw_led_state &= ~D22;
  break;

 case 132:
  hw_led_state |= D23;
  break;

 case 133:
  hw_led_state &= ~D23;
  break;

 default:
  break;
 }

 if (led_state & LED_STATE_ENABLED)
  LUB_DISC_BLNK_LED = (LUB_DISC_BLNK_LED | 0xff) & ~hw_led_state;
 else
  LUB_DISC_BLNK_LED |= 0xff;

 local_irq_restore(flags);
}
