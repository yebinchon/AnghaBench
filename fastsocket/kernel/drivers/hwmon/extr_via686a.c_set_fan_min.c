
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via686a_data {int update_lock; int * fan_min; int * fan_div; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DIV_FROM_REG (int ) ;
 int FAN_TO_REG (int,int ) ;
 int VIA686A_REG_FAN_MIN (int) ;
 struct via686a_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int via686a_write_value (struct via686a_data*,int ,int ) ;

__attribute__((used)) static ssize_t set_fan_min(struct device *dev, struct device_attribute *da,
  const char *buf, size_t count) {
 struct via686a_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 int val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->fan_min[nr] = FAN_TO_REG(val, DIV_FROM_REG(data->fan_div[nr]));
 via686a_write_value(data, VIA686A_REG_FAN_MIN(nr+1), data->fan_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
