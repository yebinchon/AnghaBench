
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7473_data {int max_duty_at_overheat; int lock; } ;
typedef size_t ssize_t ;


 int ADT7473_CFG4_MAX_DUTY_AT_OVT ;
 int ADT7473_REG_CFG4 ;
 size_t EINVAL ;
 struct adt7473_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_max_duty_at_crit(struct device *dev,
        struct device_attribute *devattr,
        const char *buf,
        size_t count)
{
 u8 reg;
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7473_data *data = i2c_get_clientdata(client);
 long temp;

 if (strict_strtol(buf, 10, &temp))
  return -EINVAL;

 mutex_lock(&data->lock);
 data->max_duty_at_overheat = !!temp;
 reg = i2c_smbus_read_byte_data(client, ADT7473_REG_CFG4);
 if (temp)
  reg |= ADT7473_CFG4_MAX_DUTY_AT_OVT;
 else
  reg &= ~ADT7473_CFG4_MAX_DUTY_AT_OVT;
 i2c_smbus_write_byte_data(client, ADT7473_REG_CFG4, reg);
 mutex_unlock(&data->lock);

 return count;
}
