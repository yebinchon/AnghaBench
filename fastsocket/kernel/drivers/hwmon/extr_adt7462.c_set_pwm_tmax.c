
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int* pwm_tmin; int* pwm_trange; int lock; } ;
typedef size_t ssize_t ;


 int ADT7462_PWM_HYST_MASK ;
 int ADT7462_PWM_RANGE_SHIFT ;
 int ADT7462_REG_PWM_TRANGE (size_t) ;
 size_t EINVAL ;
 int find_trange_value (long) ;
 struct adt7462_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_tmax(struct device *dev,
       struct device_attribute *devattr,
       const char *buf,
       size_t count)
{
 int temp;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7462_data *data = i2c_get_clientdata(client);
 int tmin, trange_value;
 long trange;

 if (strict_strtol(buf, 10, &trange))
  return -EINVAL;


 tmin = (data->pwm_tmin[attr->index] - 64) * 1000;
 trange_value = find_trange_value(trange - tmin);

 if (trange_value < 0)
  return -EINVAL;

 temp = trange_value << ADT7462_PWM_RANGE_SHIFT;
 temp |= data->pwm_trange[attr->index] & ADT7462_PWM_HYST_MASK;

 mutex_lock(&data->lock);
 data->pwm_trange[attr->index] = temp;
 i2c_smbus_write_byte_data(client, ADT7462_REG_PWM_TRANGE(attr->index),
      temp);
 mutex_unlock(&data->lock);

 return count;
}
