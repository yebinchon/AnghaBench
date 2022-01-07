
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {struct input_dev* input_dev; int touch_dev; } ;
struct input_dev {int dummy; } ;
struct atmel_wm97xx {int pen_timer; int gpio_pen; } ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 int gpio_get_value (int ) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct atmel_wm97xx* platform_get_drvdata (int ) ;
 scalar_t__ pressure ;

__attribute__((used)) static void atmel_wm97xx_acc_pen_up(struct wm97xx *wm)
{
 struct atmel_wm97xx *atmel_wm97xx = platform_get_drvdata(wm->touch_dev);
 struct input_dev *input_dev = wm->input_dev;
 int pen_down = gpio_get_value(atmel_wm97xx->gpio_pen);

 if (pen_down != 0) {
  mod_timer(&atmel_wm97xx->pen_timer,
     jiffies + msecs_to_jiffies(1));
 } else {
  if (pressure)
   input_report_abs(input_dev, ABS_PRESSURE, 0);
  input_report_key(input_dev, BTN_TOUCH, 0);
  input_sync(input_dev);
 }
}
