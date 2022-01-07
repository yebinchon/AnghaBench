
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm92_data {int update_lock; scalar_t__ temp1_hyst; int temp1_crit; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int LM92_REG_TEMP_HYST ;
 scalar_t__ TEMP_FROM_REG (int ) ;
 int TEMP_TO_REG (scalar_t__) ;
 struct lm92_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 int swab16 (int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_temp1_crit_hyst(struct device *dev, struct device_attribute *attr, const char *buf,
 size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm92_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp1_hyst = TEMP_FROM_REG(data->temp1_crit) - val;
 i2c_smbus_write_word_data(client, LM92_REG_TEMP_HYST,
      swab16(TEMP_TO_REG(data->temp1_hyst)));
 mutex_unlock(&data->update_lock);
 return count;
}
