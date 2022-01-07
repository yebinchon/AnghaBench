
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm77_data {int temp_crit; int temp_hyst; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int LM77_REG_TEMP_CRIT ;
 int LM77_REG_TEMP_HYST ;
 int LM77_TEMP_TO_REG (int) ;
 struct lm77_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm77_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_temp_crit(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm77_data *data = i2c_get_clientdata(client);
 long val = simple_strtoul(buf, ((void*)0), 10);
 int oldcrithyst;

 mutex_lock(&data->update_lock);
 oldcrithyst = data->temp_crit - data->temp_hyst;
 data->temp_crit = val;
 data->temp_hyst = data->temp_crit - oldcrithyst;
 lm77_write_value(client, LM77_REG_TEMP_CRIT,
    LM77_TEMP_TO_REG(data->temp_crit));
 lm77_write_value(client, LM77_REG_TEMP_HYST,
    LM77_TEMP_TO_REG(data->temp_hyst));
 mutex_unlock(&data->update_lock);
 return count;
}
