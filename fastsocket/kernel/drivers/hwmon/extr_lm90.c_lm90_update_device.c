
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm90_data {int valid; int* temp8; int temp_hyst; scalar_t__ kind; int* temp11; int alarms; int update_lock; scalar_t__ last_updated; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 int HZ ;
 int LM90_REG_R_LOCAL_CRIT ;
 int LM90_REG_R_LOCAL_HIGH ;
 int LM90_REG_R_LOCAL_LOW ;
 int LM90_REG_R_LOCAL_TEMP ;
 int LM90_REG_R_REMOTE_CRIT ;
 int LM90_REG_R_REMOTE_HIGHH ;
 int LM90_REG_R_REMOTE_HIGHL ;
 int LM90_REG_R_REMOTE_LOWH ;
 int LM90_REG_R_REMOTE_LOWL ;
 int LM90_REG_R_REMOTE_OFFSH ;
 int LM90_REG_R_REMOTE_OFFSL ;
 int LM90_REG_R_REMOTE_TEMPH ;
 int LM90_REG_R_REMOTE_TEMPL ;
 int LM90_REG_R_STATUS ;
 int LM90_REG_R_TCRIT_HYST ;
 int MAX6657_REG_R_LOCAL_TEMPL ;
 int dev_dbg (int *,char*) ;
 struct lm90_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int lm90_read16 (struct i2c_client*,int ,int ,int*) ;
 scalar_t__ lm90_read_reg (struct i2c_client*,int ,int*) ;
 scalar_t__ max6646 ;
 scalar_t__ max6657 ;
 scalar_t__ max6680 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct lm90_data *lm90_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm90_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ * 2) || !data->valid) {
  u8 h, l;

  dev_dbg(&client->dev, "Updating lm90 data.\n");
  lm90_read_reg(client, LM90_REG_R_LOCAL_LOW, &data->temp8[0]);
  lm90_read_reg(client, LM90_REG_R_LOCAL_HIGH, &data->temp8[1]);
  lm90_read_reg(client, LM90_REG_R_LOCAL_CRIT, &data->temp8[2]);
  lm90_read_reg(client, LM90_REG_R_REMOTE_CRIT, &data->temp8[3]);
  lm90_read_reg(client, LM90_REG_R_TCRIT_HYST, &data->temp_hyst);

  if (data->kind == max6657 || data->kind == max6646) {
   lm90_read16(client, LM90_REG_R_LOCAL_TEMP,
        MAX6657_REG_R_LOCAL_TEMPL,
        &data->temp11[4]);
  } else {
   if (lm90_read_reg(client, LM90_REG_R_LOCAL_TEMP,
       &h) == 0)
    data->temp11[4] = h << 8;
  }
  lm90_read16(client, LM90_REG_R_REMOTE_TEMPH,
       LM90_REG_R_REMOTE_TEMPL, &data->temp11[0]);

  if (lm90_read_reg(client, LM90_REG_R_REMOTE_LOWH, &h) == 0) {
   data->temp11[1] = h << 8;
   if (data->kind != max6657 && data->kind != max6680
    && data->kind != max6646
    && lm90_read_reg(client, LM90_REG_R_REMOTE_LOWL,
       &l) == 0)
    data->temp11[1] |= l;
  }
  if (lm90_read_reg(client, LM90_REG_R_REMOTE_HIGHH, &h) == 0) {
   data->temp11[2] = h << 8;
   if (data->kind != max6657 && data->kind != max6680
    && data->kind != max6646
    && lm90_read_reg(client, LM90_REG_R_REMOTE_HIGHL,
       &l) == 0)
    data->temp11[2] |= l;
  }

  if (data->kind != max6657 && data->kind != max6646) {
   if (lm90_read_reg(client, LM90_REG_R_REMOTE_OFFSH,
       &h) == 0
    && lm90_read_reg(client, LM90_REG_R_REMOTE_OFFSL,
       &l) == 0)
    data->temp11[3] = (h << 8) | l;
  }
  lm90_read_reg(client, LM90_REG_R_STATUS, &data->alarms);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
