
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long* pwm_automatic; int lock; } ;
typedef long ssize_t ;


 int ADT7470_REG_PWM_AUTO_TEMP (size_t) ;
 long EINVAL ;
 long cvt_auto_temp (long) ;
 struct adt7470_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_auto_temp(struct device *dev,
     struct device_attribute *devattr,
     const char *buf,
     size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7470_data *data = i2c_get_clientdata(client);
 int pwm_auto_reg = ADT7470_REG_PWM_AUTO_TEMP(attr->index);
 long temp;
 u8 reg;

 if (strict_strtol(buf, 10, &temp))
  return -EINVAL;

 temp = cvt_auto_temp(temp);
 if (temp < 0)
  return temp;

 mutex_lock(&data->lock);
 data->pwm_automatic[attr->index] = temp;
 reg = i2c_smbus_read_byte_data(client, pwm_auto_reg);

 if (!(attr->index % 2)) {
  reg &= 0xF;
  reg |= (temp << 4) & 0xF0;
 } else {
  reg &= 0xF0;
  reg |= temp & 0xF;
 }

 i2c_smbus_write_byte_data(client, pwm_auto_reg, reg);
 mutex_unlock(&data->lock);

 return count;
}
