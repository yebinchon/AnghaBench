
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int lock; int * pwmctl; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int adt7475_read_pwm (struct i2c_client*,size_t) ;
 int hw_set_pwm (struct i2c_client*,size_t,int ,long) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwmchan(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7475_data *data = i2c_get_clientdata(client);
 int r;
 long val;

 if (strict_strtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);

 adt7475_read_pwm(client, sattr->index);
 r = hw_set_pwm(client, sattr->index, data->pwmctl[sattr->index], val);
 if (r)
  count = r;
 mutex_unlock(&data->lock);

 return count;
}
