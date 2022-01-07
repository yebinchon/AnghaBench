
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {struct heartbeat_trig_data* trigger_data; } ;
struct heartbeat_trig_data {int timer; } ;


 int del_timer_sync (int *) ;
 int kfree (struct heartbeat_trig_data*) ;

__attribute__((used)) static void heartbeat_trig_deactivate(struct led_classdev *led_cdev)
{
 struct heartbeat_trig_data *heartbeat_data = led_cdev->trigger_data;

 if (heartbeat_data) {
  del_timer_sync(&heartbeat_data->timer);
  kfree(heartbeat_data);
 }
}
