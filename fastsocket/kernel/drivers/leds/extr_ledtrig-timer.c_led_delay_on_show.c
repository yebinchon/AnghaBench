
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_trig_data {int delay_on; } ;
struct led_classdev {struct timer_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t led_delay_on_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct timer_trig_data *timer_data = led_cdev->trigger_data;

 return sprintf(buf, "%lu\n", timer_data->delay_on);
}
