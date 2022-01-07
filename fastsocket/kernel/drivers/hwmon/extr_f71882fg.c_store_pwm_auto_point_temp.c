
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {long** pwm_auto_point_temp; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 int F71882FG_REG_POINT_TEMP (int,int) ;
 long SENSORS_LIMIT (long,int ,int) ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm_auto_point_temp(struct device *dev,
      struct device_attribute *devattr,
      const char *buf, size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int pwm = to_sensor_dev_attr_2(devattr)->index;
 int point = to_sensor_dev_attr_2(devattr)->nr;
 long val = simple_strtol(buf, ((void*)0), 10) / 1000;
 val = SENSORS_LIMIT(val, 0, 255);

 mutex_lock(&data->update_lock);
 f71882fg_write8(data, F71882FG_REG_POINT_TEMP(pwm, point), val);
 data->pwm_auto_point_temp[pwm][point] = val;
 mutex_unlock(&data->update_lock);

 return count;
}
