
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; int brightness; int (* brightness_set ) (struct led_classdev*,int ) ;} ;


 int LED_SUSPENDED ;
 int stub1 (struct led_classdev*,int ) ;

void led_classdev_resume(struct led_classdev *led_cdev)
{
 led_cdev->brightness_set(led_cdev, led_cdev->brightness);
 led_cdev->flags &= ~LED_SUSPENDED;
}
