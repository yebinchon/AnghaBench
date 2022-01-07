
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95241_data {int valid; int update_lock; scalar_t__ last_updated; void* remote2_l; void* remote2_h; void* remote1_l; void* remote1_h; void* local_l; void* local_h; scalar_t__ rate; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 int LM95241_REG_R_LOCAL_TEMPH ;
 int LM95241_REG_R_LOCAL_TEMPL ;
 int LM95241_REG_R_REMOTE1_TEMPH ;
 int LM95241_REG_R_REMOTE1_TEMPL ;
 int LM95241_REG_R_REMOTE2_TEMPH ;
 int LM95241_REG_R_REMOTE2_TEMPL ;
 int dev_dbg (int *,char*) ;
 struct lm95241_data* i2c_get_clientdata (struct i2c_client*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct lm95241_data *lm95241_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm95241_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + data->rate) ||
     !data->valid) {
  dev_dbg(&client->dev, "Updating lm95241 data.\n");
  data->local_h =
   i2c_smbus_read_byte_data(client,
       LM95241_REG_R_LOCAL_TEMPH);
  data->local_l =
   i2c_smbus_read_byte_data(client,
       LM95241_REG_R_LOCAL_TEMPL);
  data->remote1_h =
   i2c_smbus_read_byte_data(client,
       LM95241_REG_R_REMOTE1_TEMPH);
  data->remote1_l =
   i2c_smbus_read_byte_data(client,
       LM95241_REG_R_REMOTE1_TEMPL);
  data->remote2_h =
   i2c_smbus_read_byte_data(client,
       LM95241_REG_R_REMOTE2_TEMPH);
  data->remote2_l =
   i2c_smbus_read_byte_data(client,
       LM95241_REG_R_REMOTE2_TEMPL);
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
