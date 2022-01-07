
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7473_data {long* pwm_behavior; int lock; } ;
typedef size_t ssize_t ;


 long ADT7473_PWM_BHVR_MASK ;
 long ADT7473_PWM_BHVR_SHIFT ;
 int ADT7473_REG_PWM_BHVR (size_t) ;
 size_t EINVAL ;
 struct adt7473_data* i2c_get_clientdata (struct i2c_client*) ;
 long i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_enable(struct device *dev,
         struct device_attribute *devattr,
         const char *buf,
         size_t count)
{
 u8 reg;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7473_data *data = i2c_get_clientdata(client);
 long temp;

 if (strict_strtol(buf, 10, &temp))
  return -EINVAL;

 switch (temp) {
 case 0:
  temp = 3;
  break;
 case 1:
  temp = 7;
  break;
 case 2:

  temp = 4;
  break;
 default:
  return -EINVAL;
 }

 mutex_lock(&data->lock);
 reg = i2c_smbus_read_byte_data(client,
           ADT7473_REG_PWM_BHVR(attr->index));
 reg = (temp << ADT7473_PWM_BHVR_SHIFT) |
       (reg & ~ADT7473_PWM_BHVR_MASK);
 i2c_smbus_write_byte_data(client, ADT7473_REG_PWM_BHVR(attr->index),
      reg);
 data->pwm_behavior[attr->index] = reg;
 mutex_unlock(&data->lock);

 return count;
}
