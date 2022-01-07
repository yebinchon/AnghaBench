
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int led_event_t ;
struct TYPE_2__ {int leds; } ;


 int GPIO_IDLE ;
 int GPIO_TIMER ;
 int H2P2_DBG_FPGA_LED_AMBER ;
 int H2P2_DBG_FPGA_LED_BLUE ;
 int H2P2_DBG_FPGA_LED_GREEN ;
 int H2P2_DBG_FPGA_LED_RED ;
 int H2P2_DBG_FPGA_P2_LED_IDLE ;
 int H2P2_DBG_FPGA_P2_LED_TIMER ;
 int LED_STATE_CLAIMED ;
 int LED_STATE_ENABLED ;
 int LED_TIMER_ON ;
 int __raw_writew (int ,int *) ;
 TYPE_1__* fpga ;
 int gpio_set_value (int ,int) ;
 int hw_led_state ;
 int led_state ;


 int lock ;
 int machine_is_omap_h4 () ;
 int machine_is_omap_perseus2 () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void h2p2_dbg_leds_event(led_event_t evt)
{
 unsigned long flags;

 spin_lock_irqsave(&lock, flags);

 if (!(led_state & LED_STATE_ENABLED) && evt != 130)
  goto done;

 switch (evt) {
 case 130:
  if (fpga)
   led_state |= LED_STATE_ENABLED;
  break;

 case 129:
 case 136:


  if (!(machine_is_omap_perseus2() || machine_is_omap_h4())) {
   gpio_set_value(GPIO_TIMER, 0);
   gpio_set_value(GPIO_IDLE, 0);
  }

  __raw_writew(~0, &fpga->leds);
  led_state &= ~LED_STATE_ENABLED;
  goto done;

 case 139:
  led_state |= LED_STATE_CLAIMED;
  hw_led_state = 0;
  break;

 case 131:
  led_state &= ~LED_STATE_CLAIMED;
  break;
 case 137:
  hw_led_state |= H2P2_DBG_FPGA_LED_GREEN;
  break;
 case 138:
  hw_led_state &= ~H2P2_DBG_FPGA_LED_GREEN;
  break;

 case 142:
  hw_led_state |= H2P2_DBG_FPGA_LED_AMBER;
  break;
 case 143:
  hw_led_state &= ~H2P2_DBG_FPGA_LED_AMBER;
  break;

 case 132:
  hw_led_state |= H2P2_DBG_FPGA_LED_RED;
  break;
 case 133:
  hw_led_state &= ~H2P2_DBG_FPGA_LED_RED;
  break;

 case 140:
  hw_led_state |= H2P2_DBG_FPGA_LED_BLUE;
  break;
 case 141:
  hw_led_state &= ~H2P2_DBG_FPGA_LED_BLUE;
  break;

 default:
  break;
 }





 if (led_state & LED_STATE_ENABLED)
  __raw_writew(~hw_led_state, &fpga->leds);

done:
 spin_unlock_irqrestore(&lock, flags);
}
