
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct f71805f_data {int update_lock; int * fan_target; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int F71805F_REG_FAN_TARGET (int) ;
 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int f71805f_write16 (struct f71805f_data*,int ,int ) ;
 int fan_to_reg (long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_target(struct device *dev, struct device_attribute
         *devattr, const char *buf, size_t count)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int nr = attr->index;
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->fan_target[nr] = fan_to_reg(val);
 f71805f_write16(data, F71805F_REG_FAN_TARGET(nr),
   data->fan_target[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
