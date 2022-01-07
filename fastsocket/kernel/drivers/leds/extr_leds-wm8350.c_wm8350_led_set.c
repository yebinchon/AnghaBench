
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_led {int value; int value_lock; int work; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct wm8350_led* to_wm8350_led (struct led_classdev*) ;

__attribute__((used)) static void wm8350_led_set(struct led_classdev *led_cdev,
      enum led_brightness value)
{
 struct wm8350_led *led = to_wm8350_led(led_cdev);
 unsigned long flags;

 spin_lock_irqsave(&led->value_lock, flags);
 led->value = value;
 schedule_work(&led->work);
 spin_unlock_irqrestore(&led->value_lock, flags);
}
