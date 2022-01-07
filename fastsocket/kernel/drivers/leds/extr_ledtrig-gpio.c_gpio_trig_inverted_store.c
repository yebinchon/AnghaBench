
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {struct gpio_trig_data* trigger_data; } ;
struct gpio_trig_data {int inverted; int work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_err (struct device*,char*) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int schedule_work (int *) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static ssize_t gpio_trig_inverted_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t n)
{
 struct led_classdev *led = dev_get_drvdata(dev);
 struct gpio_trig_data *gpio_data = led->trigger_data;
 unsigned inverted;
 int ret;

 ret = sscanf(buf, "%u", &inverted);
 if (ret < 1) {
  dev_err(dev, "invalid value\n");
  return -EINVAL;
 }

 gpio_data->inverted = !!inverted;


 schedule_work(&gpio_data->work);

 return n;
}
