
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_timer {int list; int blink_timer; } ;
struct led_classdev {int node; int dev; int trigger_lock; scalar_t__ trigger; } ;


 int del_timer_sync (int *) ;
 int dev_attr_brightness ;
 int dev_attr_max_brightness ;
 int dev_attr_trigger ;
 int device_remove_file (int ,int *) ;
 int device_unregister (int ) ;
 int down_write (int *) ;
 int kfree (struct led_timer*) ;
 struct led_timer* led_get_timer (struct led_classdev*) ;
 int led_lock ;
 int led_trigger_set (struct led_classdev*,int *) ;
 int leds_list_lock ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up_write (int *) ;

void led_classdev_unregister(struct led_classdev *led_cdev)
{
 struct led_timer *led = led_get_timer(led_cdev);
 unsigned long flags;

 if (led) {
  del_timer_sync(&led->blink_timer);
  spin_lock_irqsave(&led_lock, flags);
  list_del(&led->list);
  spin_unlock_irqrestore(&led_lock, flags);
  kfree(led);
 }

 device_remove_file(led_cdev->dev, &dev_attr_max_brightness);
 device_remove_file(led_cdev->dev, &dev_attr_brightness);
 device_unregister(led_cdev->dev);

 down_write(&leds_list_lock);
 list_del(&led_cdev->node);
 up_write(&leds_list_lock);
}
