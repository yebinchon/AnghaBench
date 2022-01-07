
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {scalar_t__ kind; int update_lock; int temp_hyst; int * temp8; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int LM90_REG_W_TCRIT_HYST ;
 scalar_t__ adt7461 ;
 int hyst_to_reg (int) ;
 struct lm90_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ max6646 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 int temp_from_s8 (int ) ;
 int temp_from_u8 (int ) ;
 int temp_from_u8_adt7461 (struct lm90_data*,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_temphyst(struct device *dev, struct device_attribute *dummy,
       const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm90_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);
 int temp;

 mutex_lock(&data->update_lock);
 if (data->kind == adt7461)
  temp = temp_from_u8_adt7461(data, data->temp8[2]);
 else if (data->kind == max6646)
  temp = temp_from_u8(data->temp8[2]);
 else
  temp = temp_from_s8(data->temp8[2]);

 data->temp_hyst = hyst_to_reg(temp - val);
 i2c_smbus_write_byte_data(client, LM90_REG_W_TCRIT_HYST,
      data->temp_hyst);
 mutex_unlock(&data->update_lock);
 return count;
}
