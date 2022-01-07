
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_trig_data {unsigned long delay_off; int timer; int delay_on; } ;
struct led_classdev {scalar_t__ (* blink_set ) (struct led_classdev*,int *,unsigned long*) ;struct timer_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int del_timer_sync (int *) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 unsigned long simple_strtoul (char const*,char**,int) ;
 scalar_t__ stub1 (struct led_classdev*,int *,unsigned long*) ;

__attribute__((used)) static ssize_t led_delay_off_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct timer_trig_data *timer_data = led_cdev->trigger_data;
 int ret = -EINVAL;
 char *after;
 unsigned long state = simple_strtoul(buf, &after, 10);
 size_t count = after - buf;

 if (isspace(*after))
  count++;

 if (count == size) {
  if (timer_data->delay_off != state) {

   timer_data->delay_off = state;


   del_timer_sync(&timer_data->timer);


   if (!led_cdev->blink_set ||
       led_cdev->blink_set(led_cdev,
         &timer_data->delay_on, &timer_data->delay_off)) {

    mod_timer(&timer_data->timer, jiffies + 1);
   }
  }
  ret = count;
 }

 return ret;
}
