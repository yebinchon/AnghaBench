
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int* XBUS_LEDS ;
 int XBUS_LED_AMBER ;
 int XBUS_LED_GREEN ;
 int XBUS_LED_RED ;
 int hw_led_state ;
 int led_state ;


 int leds_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ebsa285_leds_event(led_event_t evt)
{
 unsigned long flags;

 spin_lock_irqsave(&leds_lock, flags);

 switch (evt) {
 case 130:
  hw_led_state = XBUS_LED_RED | XBUS_LED_GREEN;

  hw_led_state |= XBUS_LED_AMBER;

  led_state |= LED_STATE_ENABLED;
  break;

 case 129:
  led_state &= ~LED_STATE_ENABLED;
  break;

 case 139:
  led_state |= LED_STATE_CLAIMED;
  hw_led_state = XBUS_LED_RED | XBUS_LED_GREEN | XBUS_LED_AMBER;
  break;

 case 131:
  led_state &= ~LED_STATE_CLAIMED;
  hw_led_state = XBUS_LED_RED | XBUS_LED_GREEN | XBUS_LED_AMBER;
  break;
 case 136:
  if (!(led_state & LED_STATE_CLAIMED))
   hw_led_state &= ~XBUS_LED_RED;
  break;

 case 137:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~XBUS_LED_GREEN;
  break;

 case 138:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= XBUS_LED_GREEN;
  break;

 case 140:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~XBUS_LED_AMBER;
  break;

 case 141:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= XBUS_LED_AMBER;
  break;

 case 132:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~XBUS_LED_RED;
  break;

 case 133:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= XBUS_LED_RED;
  break;

 default:
  break;
 }

 if (led_state & LED_STATE_ENABLED)
  *XBUS_LEDS = hw_led_state;

 spin_unlock_irqrestore(&leds_lock, flags);
}
