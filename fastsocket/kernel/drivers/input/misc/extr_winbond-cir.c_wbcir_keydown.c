
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct wbcir_data {scalar_t__ last_scancode; scalar_t__ last_toggle; int keypressed; unsigned int last_keycode; scalar_t__ keyup_jiffies; int timer_keyup; int rxtrigger; int input_dev; } ;


 int EV_MSC ;
 int IR_KEYPRESS_TIMEOUT ;
 unsigned int KEY_RESERVED ;
 int LED_FULL ;
 int LED_OFF ;
 int MSC_SCAN ;
 int input_event (int ,int ,int ,int) ;
 int input_report_key (int ,unsigned int,int) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 int led_trigger_event (int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 unsigned int wbcir_do_getkeycode (struct wbcir_data*,scalar_t__) ;

__attribute__((used)) static void
wbcir_keydown(struct wbcir_data *data, u32 scancode, u8 toggle)
{
 unsigned int keycode;


 if (data->last_scancode == scancode &&
     data->last_toggle == toggle &&
     data->keypressed)
  goto set_timer;
 data->last_scancode = scancode;


 if (data->keypressed) {
  input_report_key(data->input_dev, data->last_keycode, 0);
  input_sync(data->input_dev);
  data->keypressed = 0;
 }


 input_event(data->input_dev, EV_MSC, MSC_SCAN, (int)scancode);


 keycode = wbcir_do_getkeycode(data, scancode);
 if (keycode == KEY_RESERVED)
  goto set_timer;


 input_report_key(data->input_dev, keycode, 1);
 data->keypressed = 1;
 data->last_keycode = keycode;
 data->last_toggle = toggle;

set_timer:
 input_sync(data->input_dev);
 led_trigger_event(data->rxtrigger,
     data->keypressed ? LED_FULL : LED_OFF);
 data->keyup_jiffies = jiffies + msecs_to_jiffies(IR_KEYPRESS_TIMEOUT);
 mod_timer(&data->timer_keyup, data->keyup_jiffies);
}
