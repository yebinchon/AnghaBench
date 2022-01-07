
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct g760a_data {int valid; int update_lock; scalar_t__ last_updated; void* fan_sta; void* act_cnt; void* set_cnt; } ;
struct device {int dummy; } ;


 int G760A_REG_ACT_CNT ;
 int G760A_REG_FAN_STA ;
 int G760A_REG_SET_CNT ;
 scalar_t__ G760A_UPDATE_INTERVAL ;
 int dev_dbg (int *,char*) ;
 void* g760a_read_value (struct i2c_client*,int ) ;
 struct g760a_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct g760a_data *g760a_update_client(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct g760a_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + G760A_UPDATE_INTERVAL)
     || !data->valid) {
  dev_dbg(&client->dev, "Starting g760a update\n");

  data->set_cnt = g760a_read_value(client, G760A_REG_SET_CNT);
  data->act_cnt = g760a_read_value(client, G760A_REG_ACT_CNT);
  data->fan_sta = g760a_read_value(client, G760A_REG_FAN_STA);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
