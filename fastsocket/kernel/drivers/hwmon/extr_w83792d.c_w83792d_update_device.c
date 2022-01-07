
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83792d_data {int valid; int* in; int* in_max; int* in_min; int low_bits; int* fan; int* fan_min; int* pwm; int* pwmenable; int* temp1; int** temp_add; int* fan_div; int alarms; int chassis; int chassis_clear; int* thermal_cruise; int* tolerance; int** sf2_points; int** sf2_levels; int update_lock; scalar_t__ last_updated; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int HZ ;
 int W83792D_REG_ALARM1 ;
 int W83792D_REG_ALARM2 ;
 int W83792D_REG_ALARM3 ;
 int W83792D_REG_CHASSIS ;
 int W83792D_REG_CHASSIS_CLR ;
 int * W83792D_REG_FAN ;
 int W83792D_REG_FAN_CFG ;
 int * W83792D_REG_FAN_DIV ;
 int * W83792D_REG_FAN_MIN ;
 int * W83792D_REG_IN ;
 int * W83792D_REG_IN_MAX ;
 int * W83792D_REG_IN_MIN ;
 int ** W83792D_REG_LEVELS ;
 int W83792D_REG_LOW_BITS1 ;
 int W83792D_REG_LOW_BITS2 ;
 int ** W83792D_REG_POINTS ;
 int * W83792D_REG_PWM ;
 int * W83792D_REG_TEMP1 ;
 int ** W83792D_REG_TEMP_ADD ;
 int * W83792D_REG_THERMAL ;
 int * W83792D_REG_TOLERANCE ;
 int dev_dbg (struct device*,char*) ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,unsigned long) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83792d_print_debug (struct w83792d_data*,struct device*) ;
 int w83792d_read_value (struct i2c_client*,int ) ;

__attribute__((used)) static struct w83792d_data *w83792d_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 int i, j;
 u8 reg_array_tmp[4], reg_tmp;

 mutex_lock(&data->update_lock);

 if (time_after
     (jiffies - data->last_updated, (unsigned long) (HZ * 3))
     || time_before(jiffies, data->last_updated) || !data->valid) {
  dev_dbg(dev, "Starting device update\n");


  for (i = 0; i < 9; i++) {
   data->in[i] = w83792d_read_value(client,
      W83792D_REG_IN[i]);
   data->in_max[i] = w83792d_read_value(client,
      W83792D_REG_IN_MAX[i]);
   data->in_min[i] = w83792d_read_value(client,
      W83792D_REG_IN_MIN[i]);
  }
  data->low_bits = w83792d_read_value(client,
      W83792D_REG_LOW_BITS1) +
     (w83792d_read_value(client,
      W83792D_REG_LOW_BITS2) << 8);
  for (i = 0; i < 7; i++) {

   data->fan[i] = w83792d_read_value(client,
      W83792D_REG_FAN[i]);
   data->fan_min[i] = w83792d_read_value(client,
      W83792D_REG_FAN_MIN[i]);

   data->pwm[i] = w83792d_read_value(client,
      W83792D_REG_PWM[i]);
  }

  reg_tmp = w83792d_read_value(client, W83792D_REG_FAN_CFG);
  data->pwmenable[0] = reg_tmp & 0x03;
  data->pwmenable[1] = (reg_tmp>>2) & 0x03;
  data->pwmenable[2] = (reg_tmp>>4) & 0x03;

  for (i = 0; i < 3; i++) {
   data->temp1[i] = w83792d_read_value(client,
       W83792D_REG_TEMP1[i]);
  }
  for (i = 0; i < 2; i++) {
   for (j = 0; j < 6; j++) {
    data->temp_add[i][j] = w83792d_read_value(
     client,W83792D_REG_TEMP_ADD[i][j]);
   }
  }


  for (i = 0; i < 4; i++) {
   reg_array_tmp[i] = w83792d_read_value(client,
       W83792D_REG_FAN_DIV[i]);
  }
  data->fan_div[0] = reg_array_tmp[0] & 0x07;
  data->fan_div[1] = (reg_array_tmp[0] >> 4) & 0x07;
  data->fan_div[2] = reg_array_tmp[1] & 0x07;
  data->fan_div[3] = (reg_array_tmp[1] >> 4) & 0x07;
  data->fan_div[4] = reg_array_tmp[2] & 0x07;
  data->fan_div[5] = (reg_array_tmp[2] >> 4) & 0x07;
  data->fan_div[6] = reg_array_tmp[3] & 0x07;


  data->alarms = w83792d_read_value(client, W83792D_REG_ALARM1) +
   (w83792d_read_value(client, W83792D_REG_ALARM2) << 8) +
   (w83792d_read_value(client, W83792D_REG_ALARM3) << 16);


  data->chassis = (w83792d_read_value(client,
   W83792D_REG_CHASSIS) >> 5) & 0x01;
  data->chassis_clear = (w83792d_read_value(client,
   W83792D_REG_CHASSIS_CLR) >> 7) & 0x01;


  for (i = 0; i < 3; i++) {
   data->thermal_cruise[i] =
    w83792d_read_value(client,
    W83792D_REG_THERMAL[i]) & 0x7f;
  }


  reg_tmp = w83792d_read_value(client, W83792D_REG_TOLERANCE[0]);
  data->tolerance[0] = reg_tmp & 0x0f;
  data->tolerance[1] = (reg_tmp >> 4) & 0x0f;
  data->tolerance[2] = w83792d_read_value(client,
     W83792D_REG_TOLERANCE[2]) & 0x0f;


  for (i = 0; i < 3; i++) {
   for (j = 0; j < 4; j++) {
    data->sf2_points[i][j] = w83792d_read_value(
     client,W83792D_REG_POINTS[i][j]) & 0x7f;
   }
  }


  for (i = 0; i < 3; i++) {
   reg_tmp = w83792d_read_value(client,
      W83792D_REG_LEVELS[i][0]);
   data->sf2_levels[i][0] = reg_tmp & 0x0f;
   data->sf2_levels[i][1] = (reg_tmp >> 4) & 0x0f;
   reg_tmp = w83792d_read_value(client,
      W83792D_REG_LEVELS[i][2]);
   data->sf2_levels[i][2] = (reg_tmp >> 4) & 0x0f;
   data->sf2_levels[i][3] = reg_tmp & 0x0f;
  }

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);





 return data;
}
