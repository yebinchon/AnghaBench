
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm93_data {int sf_tach_to_pwm; int sfc2; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,long) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_smart_tach(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = lm93_update_device(dev);
 long rc = 0;
 int mapping;


 mapping = (data->sf_tach_to_pwm >> (nr * 2)) & 0x03;


 if (mapping && ((data->sfc2 >> nr) & 0x01))
  rc = mapping;
 return sprintf(buf,"%ld\n",rc);
}
