
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {int valid; int in_num; int* in; int* in_min; int* in_max; int has_fan; int* fan; int* fan_min; int* fan_div; int* pwm_mode; int* pwm_enable; int* pwm; int* fan_min_output; int* fan_stop_time; int* target_temp; int* tolerance; int temp1; int temp1_max; int temp1_max_hyst; int* temp; int* temp_max; int* temp_max_hyst; int alarms; int update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;


 int HZ ;
 int* W83627EHF_PWM_ENABLE_SHIFT ;
 int* W83627EHF_PWM_MODE_SHIFT ;
 int W83627EHF_REG_ALARM1 ;
 int W83627EHF_REG_ALARM2 ;
 int W83627EHF_REG_ALARM3 ;
 int * W83627EHF_REG_FAN ;
 int * W83627EHF_REG_FAN_MIN ;
 int * W83627EHF_REG_FAN_MIN_OUTPUT ;
 int * W83627EHF_REG_FAN_STOP_TIME ;
 int W83627EHF_REG_IN (int) ;
 int W83627EHF_REG_IN_MAX (int) ;
 int W83627EHF_REG_IN_MIN (int) ;
 int * W83627EHF_REG_PWM ;
 int * W83627EHF_REG_PWM_ENABLE ;
 int * W83627EHF_REG_TARGET ;
 int * W83627EHF_REG_TEMP ;
 int W83627EHF_REG_TEMP1 ;
 int W83627EHF_REG_TEMP1_HYST ;
 int W83627EHF_REG_TEMP1_OVER ;
 int * W83627EHF_REG_TEMP_HYST ;
 int * W83627EHF_REG_TEMP_OVER ;
 int * W83627EHF_REG_TOLERANCE ;
 int dev_dbg (struct device*,char*,int,int ,int ) ;
 struct w83627ehf_data* dev_get_drvdata (struct device*) ;
 int div_from_reg (int) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int w83627ehf_read_value (struct w83627ehf_data*,int ) ;
 int w83627ehf_update_fan_div (struct w83627ehf_data*) ;
 int w83627ehf_write_fan_div (struct w83627ehf_data*,int) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,int) ;

__attribute__((used)) static struct w83627ehf_data *w83627ehf_update_device(struct device *dev)
{
 struct w83627ehf_data *data = dev_get_drvdata(dev);
 int pwmcfg = 0, tolerance = 0;
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ/2)
  || !data->valid) {

  w83627ehf_update_fan_div(data);


  for (i = 0; i < data->in_num; i++) {
   data->in[i] = w83627ehf_read_value(data,
          W83627EHF_REG_IN(i));
   data->in_min[i] = w83627ehf_read_value(data,
       W83627EHF_REG_IN_MIN(i));
   data->in_max[i] = w83627ehf_read_value(data,
       W83627EHF_REG_IN_MAX(i));
  }


  for (i = 0; i < 5; i++) {
   if (!(data->has_fan & (1 << i)))
    continue;

   data->fan[i] = w83627ehf_read_value(data,
           W83627EHF_REG_FAN[i]);
   data->fan_min[i] = w83627ehf_read_value(data,
        W83627EHF_REG_FAN_MIN[i]);




   if (data->fan[i] == 0xff
    && data->fan_div[i] < 0x07) {
     dev_dbg(dev, "Increasing fan%d "
     "clock divider from %u to %u\n",
     i + 1, div_from_reg(data->fan_div[i]),
     div_from_reg(data->fan_div[i] + 1));
    data->fan_div[i]++;
    w83627ehf_write_fan_div(data, i);

    if (data->fan_min[i] >= 2
     && data->fan_min[i] != 255)
     w83627ehf_write_value(data,
      W83627EHF_REG_FAN_MIN[i],
      (data->fan_min[i] /= 2));
   }
  }

  for (i = 0; i < 4; i++) {

   if (i != 1) {
    pwmcfg = w83627ehf_read_value(data,
      W83627EHF_REG_PWM_ENABLE[i]);
    tolerance = w83627ehf_read_value(data,
      W83627EHF_REG_TOLERANCE[i]);
   }
   data->pwm_mode[i] =
    ((pwmcfg >> W83627EHF_PWM_MODE_SHIFT[i]) & 1)
    ? 0 : 1;
   data->pwm_enable[i] =
     ((pwmcfg >> W83627EHF_PWM_ENABLE_SHIFT[i])
      & 3) + 1;
   data->pwm[i] = w83627ehf_read_value(data,
      W83627EHF_REG_PWM[i]);
   data->fan_min_output[i] = w83627ehf_read_value(data,
      W83627EHF_REG_FAN_MIN_OUTPUT[i]);
   data->fan_stop_time[i] = w83627ehf_read_value(data,
      W83627EHF_REG_FAN_STOP_TIME[i]);
   data->target_temp[i] =
    w83627ehf_read_value(data,
     W83627EHF_REG_TARGET[i]) &
     (data->pwm_mode[i] == 1 ? 0x7f : 0xff);
   data->tolerance[i] = (tolerance >> (i == 1 ? 4 : 0))
         & 0x0f;
  }


  data->temp1 = w83627ehf_read_value(data,
         W83627EHF_REG_TEMP1);
  data->temp1_max = w83627ehf_read_value(data,
      W83627EHF_REG_TEMP1_OVER);
  data->temp1_max_hyst = w83627ehf_read_value(data,
           W83627EHF_REG_TEMP1_HYST);
  for (i = 0; i < 2; i++) {
   data->temp[i] = w83627ehf_read_value(data,
     W83627EHF_REG_TEMP[i]);
   data->temp_max[i] = w83627ehf_read_value(data,
         W83627EHF_REG_TEMP_OVER[i]);
   data->temp_max_hyst[i] = w83627ehf_read_value(data,
       W83627EHF_REG_TEMP_HYST[i]);
  }

  data->alarms = w83627ehf_read_value(data,
     W83627EHF_REG_ALARM1) |
          (w83627ehf_read_value(data,
     W83627EHF_REG_ALARM2) << 8) |
          (w83627ehf_read_value(data,
     W83627EHF_REG_ALARM3) << 16);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);
 return data;
}
