
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm92_data {int valid; int update_lock; scalar_t__ last_updated; void* temp1_max; void* temp1_min; void* temp1_crit; void* temp1_hyst; void* temp1_input; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 scalar_t__ HZ ;
 int LM92_REG_TEMP ;
 int LM92_REG_TEMP_CRIT ;
 int LM92_REG_TEMP_HIGH ;
 int LM92_REG_TEMP_HYST ;
 int LM92_REG_TEMP_LOW ;
 int dev_dbg (int *,char*) ;
 struct lm92_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* swab16 (int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct lm92_data *lm92_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm92_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ)
  || !data->valid) {
  dev_dbg(&client->dev, "Updating lm92 data\n");
  data->temp1_input = swab16(i2c_smbus_read_word_data(client,
        LM92_REG_TEMP));
  data->temp1_hyst = swab16(i2c_smbus_read_word_data(client,
        LM92_REG_TEMP_HYST));
  data->temp1_crit = swab16(i2c_smbus_read_word_data(client,
        LM92_REG_TEMP_CRIT));
  data->temp1_min = swab16(i2c_smbus_read_word_data(client,
        LM92_REG_TEMP_LOW));
  data->temp1_max = swab16(i2c_smbus_read_word_data(client,
        LM92_REG_TEMP_HIGH));

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
