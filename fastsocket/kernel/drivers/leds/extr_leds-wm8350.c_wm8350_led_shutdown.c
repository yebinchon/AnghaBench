
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_led {int mutex; int value; } ;
struct platform_device {int dummy; } ;


 int LED_OFF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm8350_led* platform_get_drvdata (struct platform_device*) ;
 int wm8350_led_disable (struct wm8350_led*) ;

__attribute__((used)) static void wm8350_led_shutdown(struct platform_device *pdev)
{
 struct wm8350_led *led = platform_get_drvdata(pdev);

 mutex_lock(&led->mutex);
 led->value = LED_OFF;
 wm8350_led_disable(led);
 mutex_unlock(&led->mutex);
}
