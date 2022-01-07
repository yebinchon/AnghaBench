
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int (* brightness_get ) (struct led_classdev*) ;int brightness; } ;


 int stub1 (struct led_classdev*) ;

__attribute__((used)) static void led_update_brightness(struct led_classdev *led_cdev)
{
 if (led_cdev->brightness_get)
  led_cdev->brightness = led_cdev->brightness_get(led_cdev);
}
