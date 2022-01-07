
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7879 {int gpio; int cmd_crtl2; int mutex; int bus; } ;
typedef int ssize_t ;


 int AD7879_GPIO_DATA ;
 int AD7879_REG_CTRL2 ;
 int ad7879_write (int ,int ,int) ;
 struct ad7879* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t ad7879_gpio_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ad7879 *ts = dev_get_drvdata(dev);
 unsigned long val;
 int error;

 error = strict_strtoul(buf, 10, &val);
 if (error)
  return error;

 mutex_lock(&ts->mutex);
 ts->gpio = !!val;
 error = ad7879_write(ts->bus, AD7879_REG_CTRL2,
      ts->gpio ?
    ts->cmd_crtl2 & ~AD7879_GPIO_DATA :
    ts->cmd_crtl2 | AD7879_GPIO_DATA);
 mutex_unlock(&ts->mutex);

 return error ? : count;
}
