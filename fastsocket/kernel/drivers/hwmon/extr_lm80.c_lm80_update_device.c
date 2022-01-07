
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm80_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int temp; int temp_os_max; int temp_os_hyst; int temp_hot_max; int temp_hot_hyst; int* fan_div; int update_lock; scalar_t__ last_updated; int alarms; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 int HZ ;
 int LM80_REG_ALARM1 ;
 int LM80_REG_ALARM2 ;
 int LM80_REG_FAN1 ;
 int LM80_REG_FAN2 ;
 int LM80_REG_FANDIV ;
 int LM80_REG_FAN_MIN (int) ;
 int LM80_REG_IN (int) ;
 int LM80_REG_IN_MAX (int) ;
 int LM80_REG_IN_MIN (int) ;
 int LM80_REG_RES ;
 int LM80_REG_TEMP ;
 int LM80_REG_TEMP_HOT_HYST ;
 int LM80_REG_TEMP_HOT_MAX ;
 int LM80_REG_TEMP_OS_HYST ;
 int LM80_REG_TEMP_OS_MAX ;
 int dev_dbg (int *,char*) ;
 struct lm80_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int lm80_read_value (struct i2c_client*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct lm80_data *lm80_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm80_data *data = i2c_get_clientdata(client);
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + 2 * HZ) || !data->valid) {
  dev_dbg(&client->dev, "Starting lm80 update\n");
  for (i = 0; i <= 6; i++) {
   data->in[i] =
       lm80_read_value(client, LM80_REG_IN(i));
   data->in_min[i] =
       lm80_read_value(client, LM80_REG_IN_MIN(i));
   data->in_max[i] =
       lm80_read_value(client, LM80_REG_IN_MAX(i));
  }
  data->fan[0] = lm80_read_value(client, LM80_REG_FAN1);
  data->fan_min[0] =
      lm80_read_value(client, LM80_REG_FAN_MIN(1));
  data->fan[1] = lm80_read_value(client, LM80_REG_FAN2);
  data->fan_min[1] =
      lm80_read_value(client, LM80_REG_FAN_MIN(2));

  data->temp =
      (lm80_read_value(client, LM80_REG_TEMP) << 8) |
      (lm80_read_value(client, LM80_REG_RES) & 0xf0);
  data->temp_os_max =
      lm80_read_value(client, LM80_REG_TEMP_OS_MAX);
  data->temp_os_hyst =
      lm80_read_value(client, LM80_REG_TEMP_OS_HYST);
  data->temp_hot_max =
      lm80_read_value(client, LM80_REG_TEMP_HOT_MAX);
  data->temp_hot_hyst =
      lm80_read_value(client, LM80_REG_TEMP_HOT_HYST);

  i = lm80_read_value(client, LM80_REG_FANDIV);
  data->fan_div[0] = (i >> 2) & 0x03;
  data->fan_div[1] = (i >> 4) & 0x03;
  data->alarms = lm80_read_value(client, LM80_REG_ALARM1) +
      (lm80_read_value(client, LM80_REG_ALARM2) << 8);
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
