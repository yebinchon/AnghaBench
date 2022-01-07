
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;
struct ads7828_data {int valid; int update_lock; scalar_t__ last_updated; int * adc_input; } ;


 unsigned int ADS7828_NCH ;
 int HZ ;
 int ads7828_read_value (struct i2c_client*,int ) ;
 int channel_cmd_byte (unsigned int) ;
 int dev_dbg (int *,char*) ;
 struct ads7828_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct ads7828_data *ads7828_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ads7828_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
   || !data->valid) {
  unsigned int ch;
  dev_dbg(&client->dev, "Starting ads7828 update\n");

  for (ch = 0; ch < ADS7828_NCH; ch++) {
   u8 cmd = channel_cmd_byte(ch);
   data->adc_input[ch] = ads7828_read_value(client, cmd);
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
