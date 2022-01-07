
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd2802_led {int cdev_led1r; int work; } ;


 int cancel_work_sync (int *) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static void bd2802_unregister_led_classdev(struct bd2802_led *led)
{
 cancel_work_sync(&led->work);
 led_classdev_unregister(&led->cdev_led1r);
}
