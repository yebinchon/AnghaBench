
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct device {int dummy; } ;
struct asb100_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* temp; int* temp_max; int* temp_hyst; int vid; int* fan_div; int pwm; int update_lock; scalar_t__ last_updated; int alarms; } ;


 int ASB100_REG_ALARM1 ;
 int ASB100_REG_ALARM2 ;
 int ASB100_REG_CHIPID ;
 int ASB100_REG_FAN (int) ;
 int ASB100_REG_FAN_MIN (int) ;
 int ASB100_REG_IN (int) ;
 int ASB100_REG_IN_MAX (int) ;
 int ASB100_REG_IN_MIN (int) ;
 int ASB100_REG_PIN ;
 int ASB100_REG_PWM1 ;
 int ASB100_REG_TEMP (int) ;
 int ASB100_REG_TEMP_HYST (int) ;
 int ASB100_REG_TEMP_MAX (int) ;
 int ASB100_REG_VID_FANDIV ;
 int HZ ;
 int asb100_read_value (struct i2c_client*,int ) ;
 int dev_dbg (int *,char*) ;
 struct asb100_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static struct asb100_data *asb100_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct asb100_data *data = i2c_get_clientdata(client);
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
  || !data->valid) {

  dev_dbg(&client->dev, "starting device update...\n");


  for (i = 0; i < 7; i++) {
   data->in[i] = asb100_read_value(client,
    ASB100_REG_IN(i));
   data->in_min[i] = asb100_read_value(client,
    ASB100_REG_IN_MIN(i));
   data->in_max[i] = asb100_read_value(client,
    ASB100_REG_IN_MAX(i));
  }


  for (i = 0; i < 3; i++) {
   data->fan[i] = asb100_read_value(client,
     ASB100_REG_FAN(i));
   data->fan_min[i] = asb100_read_value(client,
     ASB100_REG_FAN_MIN(i));
  }


  for (i = 1; i <= 4; i++) {
   data->temp[i-1] = asb100_read_value(client,
     ASB100_REG_TEMP(i));
   data->temp_max[i-1] = asb100_read_value(client,
     ASB100_REG_TEMP_MAX(i));
   data->temp_hyst[i-1] = asb100_read_value(client,
     ASB100_REG_TEMP_HYST(i));
  }


  i = asb100_read_value(client, ASB100_REG_VID_FANDIV);
  data->vid = i & 0x0f;
  data->vid |= (asb100_read_value(client,
    ASB100_REG_CHIPID) & 0x01) << 4;
  data->fan_div[0] = (i >> 4) & 0x03;
  data->fan_div[1] = (i >> 6) & 0x03;
  data->fan_div[2] = (asb100_read_value(client,
    ASB100_REG_PIN) >> 6) & 0x03;


  data->pwm = asb100_read_value(client, ASB100_REG_PWM1);


  data->alarms = asb100_read_value(client, ASB100_REG_ALARM1) +
   (asb100_read_value(client, ASB100_REG_ALARM2) << 8);

  data->last_updated = jiffies;
  data->valid = 1;

  dev_dbg(&client->dev, "... device update complete\n");
 }

 mutex_unlock(&data->update_lock);

 return data;
}
