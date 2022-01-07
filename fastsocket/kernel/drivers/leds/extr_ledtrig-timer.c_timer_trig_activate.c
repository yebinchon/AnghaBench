
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct timer_trig_data {scalar_t__ brightness_on; int delay_off; int delay_on; TYPE_1__ timer; } ;
struct led_classdev {scalar_t__ max_brightness; struct timer_trig_data* trigger_data; int dev; int (* blink_set ) (struct led_classdev*,int *,int *) ;} ;


 int GFP_KERNEL ;
 scalar_t__ LED_OFF ;
 int dev_attr_delay_off ;
 int dev_attr_delay_on ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int init_timer (TYPE_1__*) ;
 int kfree (struct timer_trig_data*) ;
 struct timer_trig_data* kzalloc (int,int ) ;
 scalar_t__ led_get_brightness (struct led_classdev*) ;
 int led_timer_function ;
 int stub1 (struct led_classdev*,int *,int *) ;

__attribute__((used)) static void timer_trig_activate(struct led_classdev *led_cdev)
{
 struct timer_trig_data *timer_data;
 int rc;

 timer_data = kzalloc(sizeof(struct timer_trig_data), GFP_KERNEL);
 if (!timer_data)
  return;

 timer_data->brightness_on = led_get_brightness(led_cdev);
 if (timer_data->brightness_on == LED_OFF)
  timer_data->brightness_on = led_cdev->max_brightness;
 led_cdev->trigger_data = timer_data;

 init_timer(&timer_data->timer);
 timer_data->timer.function = led_timer_function;
 timer_data->timer.data = (unsigned long) led_cdev;

 rc = device_create_file(led_cdev->dev, &dev_attr_delay_on);
 if (rc)
  goto err_out;
 rc = device_create_file(led_cdev->dev, &dev_attr_delay_off);
 if (rc)
  goto err_out_delayon;




 if (led_cdev->blink_set)
  led_cdev->blink_set(led_cdev,
   &timer_data->delay_on, &timer_data->delay_off);

 return;

err_out_delayon:
 device_remove_file(led_cdev->dev, &dev_attr_delay_on);
err_out:
 led_cdev->trigger_data = ((void*)0);
 kfree(timer_data);
}
