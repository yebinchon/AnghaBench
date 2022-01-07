
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int SEQUOIA_LED_AMBER ;
 int SEQUOIA_LED_BACK ;
 int SEQUOIA_LED_GREEN ;
 int hw_led_state ;
 int led_state ;


 int leds_lock ;
 int saved_state ;
 int sequoia_read (int) ;
 int sequoia_write (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sequoia_leds_event(led_event_t evt)
{
 unsigned long flags;

 spin_lock_irqsave(&leds_lock, flags);

 hw_led_state = sequoia_read(0x09);

 switch (evt) {
 case 130:
  hw_led_state |= SEQUOIA_LED_GREEN;
  hw_led_state |= SEQUOIA_LED_AMBER;



  hw_led_state &= ~SEQUOIA_LED_BACK;

  led_state |= LED_STATE_ENABLED;
  break;

 case 129:
  hw_led_state &= ~SEQUOIA_LED_BACK;
  hw_led_state |= SEQUOIA_LED_GREEN;
  hw_led_state |= SEQUOIA_LED_AMBER;
  led_state &= ~LED_STATE_ENABLED;
  break;

 case 138:
  led_state |= LED_STATE_CLAIMED;
  saved_state = hw_led_state;
  hw_led_state &= ~SEQUOIA_LED_BACK;
  hw_led_state |= SEQUOIA_LED_GREEN;
  hw_led_state |= SEQUOIA_LED_AMBER;
  break;

 case 131:
  led_state &= ~LED_STATE_CLAIMED;
  hw_led_state = saved_state;
  break;
 case 136:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~SEQUOIA_LED_GREEN;
  break;

 case 137:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= SEQUOIA_LED_GREEN;
  break;

 case 139:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~SEQUOIA_LED_AMBER;
  break;

 case 140:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= SEQUOIA_LED_AMBER;
  break;

 case 132:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state |= SEQUOIA_LED_BACK;
  break;

 case 133:
  if (led_state & LED_STATE_CLAIMED)
   hw_led_state &= ~SEQUOIA_LED_BACK;
  break;

 default:
  break;
 }

 if (led_state & LED_STATE_ENABLED)
  sequoia_write(hw_led_state,0x09);

 spin_unlock_irqrestore(&leds_lock, flags);
}
