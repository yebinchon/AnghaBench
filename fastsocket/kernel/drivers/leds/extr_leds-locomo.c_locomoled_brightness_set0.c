
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LOCOMO_LPT0 ;
 int locomoled_brightness_set (struct led_classdev*,int,int ) ;

__attribute__((used)) static void locomoled_brightness_set0(struct led_classdev *led_cdev,
    enum led_brightness value)
{
 locomoled_brightness_set(led_cdev, value, LOCOMO_LPT0);
}
