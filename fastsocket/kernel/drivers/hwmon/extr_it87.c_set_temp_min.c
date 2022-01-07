
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct it87_data {int update_lock; int * temp_low; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IT87_REG_TEMP_LOW (int) ;
 int TEMP_TO_REG (int) ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int it87_write_value (struct it87_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_min(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;

 struct it87_data *data = dev_get_drvdata(dev);
 int val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp_low[nr] = TEMP_TO_REG(val);
 it87_write_value(data, IT87_REG_TEMP_LOW(nr), data->temp_low[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
