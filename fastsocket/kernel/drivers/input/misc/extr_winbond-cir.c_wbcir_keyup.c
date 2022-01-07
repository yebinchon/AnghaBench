
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {int input_dev; int last_keycode; int rxtrigger; scalar_t__ keypressed; int keyup_jiffies; } ;


 int LED_OFF ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int led_trigger_event (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_is_after_eq_jiffies (int ) ;
 int wbcir_lock ;

__attribute__((used)) static void
wbcir_keyup(unsigned long cookie)
{
 struct wbcir_data *data = (struct wbcir_data *)cookie;
 unsigned long flags;
 spin_lock_irqsave(&wbcir_lock, flags);

 if (time_is_after_eq_jiffies(data->keyup_jiffies) && data->keypressed) {
  data->keypressed = 0;
  led_trigger_event(data->rxtrigger, LED_OFF);
  input_report_key(data->input_dev, data->last_keycode, 0);
  input_sync(data->input_dev);
 }

 spin_unlock_irqrestore(&wbcir_lock, flags);
}
