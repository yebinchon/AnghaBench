
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_trig_data {int timer; } ;
struct led_classdev {int (* blink_set ) (struct led_classdev*,unsigned long*,unsigned long*) ;int dev; struct timer_trig_data* trigger_data; } ;


 int del_timer_sync (int *) ;
 int dev_attr_delay_off ;
 int dev_attr_delay_on ;
 int device_remove_file (int ,int *) ;
 int kfree (struct timer_trig_data*) ;
 int stub1 (struct led_classdev*,unsigned long*,unsigned long*) ;

__attribute__((used)) static void timer_trig_deactivate(struct led_classdev *led_cdev)
{
 struct timer_trig_data *timer_data = led_cdev->trigger_data;
 unsigned long on = 0, off = 0;

 if (timer_data) {
  device_remove_file(led_cdev->dev, &dev_attr_delay_on);
  device_remove_file(led_cdev->dev, &dev_attr_delay_off);
  del_timer_sync(&timer_data->timer);
  kfree(timer_data);
 }


 if (led_cdev->blink_set)
  led_cdev->blink_set(led_cdev, &on, &off);
}
