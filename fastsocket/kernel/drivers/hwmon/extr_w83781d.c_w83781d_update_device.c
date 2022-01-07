
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int valid; scalar_t__ type; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* pwm; int pwm2_enable; int temp; int temp_max; int temp_max_hyst; int* temp_add; int* temp_max_add; int* temp_max_hyst_add; int vid; int* fan_div; int alarms; int beep_mask; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int HZ ;
 int W83781D_REG_ALARM1 ;
 int W83781D_REG_ALARM2 ;
 int W83781D_REG_BEEP_INTS1 ;
 int W83781D_REG_BEEP_INTS2 ;
 int W83781D_REG_BEEP_INTS3 ;
 int W83781D_REG_CHIPID ;
 int W83781D_REG_FAN (int) ;
 int W83781D_REG_FAN_MIN (int) ;
 int W83781D_REG_IN (int) ;
 int W83781D_REG_IN_MAX (int) ;
 int W83781D_REG_IN_MIN (int) ;
 int W83781D_REG_PIN ;
 int * W83781D_REG_PWM ;
 int W83781D_REG_PWMCLK12 ;
 int W83781D_REG_TEMP (int) ;
 int W83781D_REG_TEMP_HYST (int) ;
 int W83781D_REG_TEMP_OVER (int) ;
 int W83781D_REG_VBAT ;
 int W83781D_REG_VID_FANDIV ;
 int W83782D_REG_ALARM1 ;
 int W83782D_REG_ALARM2 ;
 int W83782D_REG_ALARM3 ;
 scalar_t__ as99127f ;
 int dev_dbg (struct device*,char*) ;
 struct w83781d_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ w83781d ;
 int w83781d_read_value (struct w83781d_data*,int ) ;
 scalar_t__ w83782d ;
 scalar_t__ w83783s ;

__attribute__((used)) static struct w83781d_data *w83781d_update_device(struct device *dev)
{
 struct w83781d_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
     || !data->valid) {
  dev_dbg(dev, "Starting device update\n");

  for (i = 0; i <= 8; i++) {
   if (data->type == w83783s && i == 1)
    continue;
   data->in[i] =
       w83781d_read_value(data, W83781D_REG_IN(i));
   data->in_min[i] =
       w83781d_read_value(data, W83781D_REG_IN_MIN(i));
   data->in_max[i] =
       w83781d_read_value(data, W83781D_REG_IN_MAX(i));
   if ((data->type != w83782d) && (i == 6))
    break;
  }
  for (i = 0; i < 3; i++) {
   data->fan[i] =
       w83781d_read_value(data, W83781D_REG_FAN(i));
   data->fan_min[i] =
       w83781d_read_value(data, W83781D_REG_FAN_MIN(i));
  }
  if (data->type != w83781d && data->type != as99127f) {
   for (i = 0; i < 4; i++) {
    data->pwm[i] =
        w83781d_read_value(data,
             W83781D_REG_PWM[i]);

    if ((data->type != w83782d || !client)
        && i == 1)
     break;
   }

   data->pwm2_enable = (w83781d_read_value(data,
           W83781D_REG_PWMCLK12) & 0x08) >> 3;
  }

  data->temp = w83781d_read_value(data, W83781D_REG_TEMP(1));
  data->temp_max =
      w83781d_read_value(data, W83781D_REG_TEMP_OVER(1));
  data->temp_max_hyst =
      w83781d_read_value(data, W83781D_REG_TEMP_HYST(1));
  data->temp_add[0] =
      w83781d_read_value(data, W83781D_REG_TEMP(2));
  data->temp_max_add[0] =
      w83781d_read_value(data, W83781D_REG_TEMP_OVER(2));
  data->temp_max_hyst_add[0] =
      w83781d_read_value(data, W83781D_REG_TEMP_HYST(2));
  if (data->type != w83783s) {
   data->temp_add[1] =
       w83781d_read_value(data, W83781D_REG_TEMP(3));
   data->temp_max_add[1] =
       w83781d_read_value(data,
            W83781D_REG_TEMP_OVER(3));
   data->temp_max_hyst_add[1] =
       w83781d_read_value(data,
            W83781D_REG_TEMP_HYST(3));
  }
  i = w83781d_read_value(data, W83781D_REG_VID_FANDIV);
  data->vid = i & 0x0f;
  data->vid |= (w83781d_read_value(data,
     W83781D_REG_CHIPID) & 0x01) << 4;
  data->fan_div[0] = (i >> 4) & 0x03;
  data->fan_div[1] = (i >> 6) & 0x03;
  data->fan_div[2] = (w83781d_read_value(data,
     W83781D_REG_PIN) >> 6) & 0x03;
  if ((data->type != w83781d) && (data->type != as99127f)) {
   i = w83781d_read_value(data, W83781D_REG_VBAT);
   data->fan_div[0] |= (i >> 3) & 0x04;
   data->fan_div[1] |= (i >> 4) & 0x04;
   data->fan_div[2] |= (i >> 5) & 0x04;
  }
  if (data->type == w83782d) {
   data->alarms = w83781d_read_value(data,
      W83782D_REG_ALARM1)
         | (w83781d_read_value(data,
      W83782D_REG_ALARM2) << 8)
         | (w83781d_read_value(data,
      W83782D_REG_ALARM3) << 16);
  } else if (data->type == w83783s) {
   data->alarms = w83781d_read_value(data,
      W83782D_REG_ALARM1)
         | (w83781d_read_value(data,
      W83782D_REG_ALARM2) << 8);
  } else {


   data->alarms = w83781d_read_value(data,
      W83781D_REG_ALARM1)
         | (w83781d_read_value(data,
      W83781D_REG_ALARM2) << 8);
  }
  i = w83781d_read_value(data, W83781D_REG_BEEP_INTS2);
  data->beep_mask = (i << 8) +
      w83781d_read_value(data, W83781D_REG_BEEP_INTS1);
  if ((data->type != w83781d) && (data->type != as99127f)) {
   data->beep_mask |=
       w83781d_read_value(data,
            W83781D_REG_BEEP_INTS3) << 16;
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
