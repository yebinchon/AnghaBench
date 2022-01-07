
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {struct heartbeat_trig_data* trigger_data; } ;
struct TYPE_2__ {int data; } ;
struct heartbeat_trig_data {TYPE_1__ timer; scalar_t__ phase; } ;


 int GFP_KERNEL ;
 struct heartbeat_trig_data* kzalloc (int,int ) ;
 int led_heartbeat_function (int ) ;
 int setup_timer (TYPE_1__*,int (*) (int ),unsigned long) ;

__attribute__((used)) static void heartbeat_trig_activate(struct led_classdev *led_cdev)
{
 struct heartbeat_trig_data *heartbeat_data;

 heartbeat_data = kzalloc(sizeof(*heartbeat_data), GFP_KERNEL);
 if (!heartbeat_data)
  return;

 led_cdev->trigger_data = heartbeat_data;
 setup_timer(&heartbeat_data->timer,
      led_heartbeat_function, (unsigned long) led_cdev);
 heartbeat_data->phase = 0;
 led_heartbeat_function(heartbeat_data->timer.data);
}
