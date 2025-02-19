
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {int* pwm_auto_point_mapping; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int F71882FG_REG_POINT_MAPPING (int) ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm_interpolate(struct device *dev,
         struct device_attribute *devattr,
         const char *buf, size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int nr = to_sensor_dev_attr_2(devattr)->index;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->pwm_auto_point_mapping[nr] =
  f71882fg_read8(data, F71882FG_REG_POINT_MAPPING(nr));
 if (val)
  val = data->pwm_auto_point_mapping[nr] | (1 << 4);
 else
  val = data->pwm_auto_point_mapping[nr] & (~(1 << 4));
 f71882fg_write8(data, F71882FG_REG_POINT_MAPPING(nr), val);
 data->pwm_auto_point_mapping[nr] = val;
 mutex_unlock(&data->update_lock);

 return count;
}
