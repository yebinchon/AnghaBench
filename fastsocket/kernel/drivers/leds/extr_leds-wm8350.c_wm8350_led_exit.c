
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int wm8350_led_driver ;

__attribute__((used)) static void wm8350_led_exit(void)
{
 platform_driver_unregister(&wm8350_led_driver);
}
