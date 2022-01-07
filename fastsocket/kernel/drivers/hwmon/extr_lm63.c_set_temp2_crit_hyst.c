
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int update_lock; int * temp8; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int HYST_TO_REG (long) ;
 int LM63_REG_REMOTE_TCRIT_HYST ;
 long TEMP8_FROM_REG (int ) ;
 struct lm63_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_temp2_crit_hyst(struct device *dev, struct device_attribute *dummy,
       const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm63_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);
 long hyst;

 mutex_lock(&data->update_lock);
 hyst = TEMP8_FROM_REG(data->temp8[2]) - val;
 i2c_smbus_write_byte_data(client, LM63_REG_REMOTE_TCRIT_HYST,
      HYST_TO_REG(hyst));
 mutex_unlock(&data->update_lock);
 return count;
}
