
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int IDP_BUSY_LED ;
 int IDP_CPLD_LED_CONTROL ;
 int IDP_HB_LED ;
 int IDP_LEDS_MASK ;
 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int hw_led_state ;
 int led_state ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void idp_leds_event(led_event_t evt)
{
 unsigned long flags;

 local_irq_save(flags);

 switch (evt) {
 case 130:
  hw_led_state = IDP_HB_LED | IDP_BUSY_LED;
  led_state = LED_STATE_ENABLED;
  break;

 case 129:
  led_state &= ~LED_STATE_ENABLED;
  break;

 case 139:
  led_state |= LED_STATE_CLAIMED;
  hw_led_state = IDP_HB_LED | IDP_BUSY_LED;
  break;

 case 131:
  led_state &= ~LED_STATE_CLAIMED;
  hw_led_state = IDP_HB_LED | IDP_BUSY_LED;
  break;
 case 136:
  break;

 case 137:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= IDP_HB_LED;
  break;

 case 138:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~IDP_HB_LED;
  break;

 case 140:
  break;

 case 141:
  break;

 case 132:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= IDP_BUSY_LED;
  break;

 case 133:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~IDP_BUSY_LED;
  break;

 default:
  break;
 }

 if (led_state & LED_STATE_ENABLED)
  IDP_CPLD_LED_CONTROL = ( (IDP_CPLD_LED_CONTROL | IDP_LEDS_MASK) & ~hw_led_state);
 else
  IDP_CPLD_LED_CONTROL |= IDP_LEDS_MASK;

 local_irq_restore(flags);
}
