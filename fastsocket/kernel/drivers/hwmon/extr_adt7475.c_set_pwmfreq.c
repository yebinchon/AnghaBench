
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* range; int lock; } ;
typedef size_t ssize_t ;


 int ARRAY_SIZE (int ) ;
 size_t EINVAL ;
 int TEMP_TRANGE_REG (size_t) ;
 int adt7475_read (int ) ;
 int find_nearest (long,int ,int ) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwmfreq_table ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwmfreq(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7475_data *data = i2c_get_clientdata(client);
 int out;
 long val;

 if (strict_strtol(buf, 10, &val))
  return -EINVAL;

 out = find_nearest(val, pwmfreq_table, ARRAY_SIZE(pwmfreq_table));

 mutex_lock(&data->lock);

 data->range[sattr->index] =
  adt7475_read(TEMP_TRANGE_REG(sattr->index));
 data->range[sattr->index] &= ~7;
 data->range[sattr->index] |= out;

 i2c_smbus_write_byte_data(client, TEMP_TRANGE_REG(sattr->index),
      data->range[sattr->index]);

 mutex_unlock(&data->lock);
 return count;
}
