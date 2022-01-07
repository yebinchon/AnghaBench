
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int lock; int cfg2; } ;
typedef size_t ssize_t ;


 int ADT7462_FSPD_MASK ;
 int ADT7462_REG_CFG2 ;
 size_t EINVAL ;
 struct adt7462_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_force_pwm_max(struct device *dev,
     struct device_attribute *devattr,
     const char *buf,
     size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adt7462_data *data = i2c_get_clientdata(client);
 long temp;
 u8 reg;

 if (strict_strtol(buf, 10, &temp))
  return -EINVAL;

 mutex_lock(&data->lock);
 reg = i2c_smbus_read_byte_data(client, ADT7462_REG_CFG2);
 if (temp)
  reg |= ADT7462_FSPD_MASK;
 else
  reg &= ~ADT7462_FSPD_MASK;
 data->cfg2 = reg;
 i2c_smbus_write_byte_data(client, ADT7462_REG_CFG2, reg);
 mutex_unlock(&data->lock);

 return count;
}
