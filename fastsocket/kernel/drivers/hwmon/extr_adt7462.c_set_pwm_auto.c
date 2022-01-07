
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct adt7462_data* i2c_get_clientdata (struct i2c_client*) ;
 int set_pwm_channel (struct i2c_client*,struct adt7462_data*,int ,int) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_auto(struct device *dev,
       struct device_attribute *devattr,
       const char *buf,
       size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7462_data *data = i2c_get_clientdata(client);
 long temp;

 if (strict_strtol(buf, 10, &temp))
  return -EINVAL;

 switch (temp) {
 case 0:
  set_pwm_channel(client, data, attr->index, 4);
  return count;
 case 1:
  set_pwm_channel(client, data, attr->index, 7);
  return count;
 default:
  return -EINVAL;
 }
}
