
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_status {int brightness; int value_lock; int work; scalar_t__ blink; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct wm831x_status* to_wm831x_status (struct led_classdev*) ;

__attribute__((used)) static void wm831x_status_set(struct led_classdev *led_cdev,
      enum led_brightness value)
{
 struct wm831x_status *led = to_wm831x_status(led_cdev);
 unsigned long flags;

 spin_lock_irqsave(&led->value_lock, flags);
 led->brightness = value;
 if (value == LED_OFF)
  led->blink = 0;
 schedule_work(&led->work);
 spin_unlock_irqrestore(&led->value_lock, flags);
}
