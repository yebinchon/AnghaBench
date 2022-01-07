
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct it87_data {int sensor; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IT87_REG_TEMP_ENABLE ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_sensor(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;

 struct it87_data *data = dev_get_drvdata(dev);
 int val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);

 data->sensor &= ~(1 << nr);
 data->sensor &= ~(8 << nr);
 if (val == 2) {
  dev_warn(dev, "Sensor type 2 is deprecated, please use 4 "
    "instead\n");
  val = 4;
 }

 if (val == 3)
     data->sensor |= 1 << nr;
 else if (val == 4)
     data->sensor |= 8 << nr;
 else if (val != 0) {
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }
 it87_write_value(data, IT87_REG_TEMP_ENABLE, data->sensor);
 mutex_unlock(&data->update_lock);
 return count;
}
