
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {struct gpio_trig_data* trigger_data; } ;
struct gpio_trig_data {int gpio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t gpio_trig_gpio_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct led_classdev *led = dev_get_drvdata(dev);
 struct gpio_trig_data *gpio_data = led->trigger_data;

 return sprintf(buf, "%u\n", gpio_data->gpio);
}
