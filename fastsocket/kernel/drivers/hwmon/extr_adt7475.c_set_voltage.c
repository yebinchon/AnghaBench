
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t nr; size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int** voltage; int lock; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t MIN ;
 unsigned char VOLTAGE_MAX_REG (int) ;
 unsigned char VOLTAGE_MIN_REG (int) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned char,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int vcc2reg (long) ;
 int vccp2reg (long) ;

__attribute__((used)) static ssize_t set_voltage(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{

 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7475_data *data = i2c_get_clientdata(client);
 unsigned char reg;
 long val;

 if (strict_strtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);

 data->voltage[sattr->nr][sattr->index] =
  sattr->index ? vcc2reg(val) : vccp2reg(val);

 if (sattr->nr == MIN)
  reg = VOLTAGE_MIN_REG(sattr->index);
 else
  reg = VOLTAGE_MAX_REG(sattr->index);

 i2c_smbus_write_byte_data(client, reg,
      data->voltage[sattr->nr][sattr->index] >> 2);
 mutex_unlock(&data->lock);

 return count;
}
