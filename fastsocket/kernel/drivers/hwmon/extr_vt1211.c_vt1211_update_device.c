
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int valid; int vid; int* in; int* in_min; int* in_max; int* temp; int* temp_max; int* temp_hyst; int* fan; int* fan_min; int* pwm; int* fan_div; int fan_ctl; int* pwm_ctl; int pwm_clk; int** pwm_auto_pwm; int* pwm_auto_temp; int alarms; int update_lock; scalar_t__ last_updated; int uch_config; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ HZ ;
 scalar_t__ ISTEMP (int,int ) ;
 scalar_t__ ISVOLT (int,int ) ;
 int VT1211_REG_ALARM1 ;
 int VT1211_REG_ALARM2 ;
 int VT1211_REG_FAN (int) ;
 int VT1211_REG_FAN_DIV ;
 int VT1211_REG_FAN_MIN (int) ;
 int VT1211_REG_IN (int) ;
 int VT1211_REG_IN_MAX (int) ;
 int VT1211_REG_IN_MIN (int) ;
 int VT1211_REG_PWM (int) ;
 int VT1211_REG_PWM_AUTO_PWM (int,int) ;
 int VT1211_REG_PWM_AUTO_TEMP (int) ;
 int VT1211_REG_PWM_CLK ;
 int VT1211_REG_PWM_CTL ;
 int VT1211_REG_VID ;
 struct vt1211_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regtemp ;
 int * regtemphyst ;
 int * regtempmax ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int vt1211_read8 (struct vt1211_data*,int ) ;

__attribute__((used)) static struct vt1211_data *vt1211_update_device(struct device *dev)
{
 struct vt1211_data *data = dev_get_drvdata(dev);
 int ix, val;

 mutex_lock(&data->update_lock);


 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {

  data->vid = vt1211_read8(data, VT1211_REG_VID) & 0x1f;


  for (ix = 0; ix < ARRAY_SIZE(data->in); ix++) {
   if (ISVOLT(ix, data->uch_config)) {
    data->in[ix] = vt1211_read8(data,
      VT1211_REG_IN(ix));
    data->in_min[ix] = vt1211_read8(data,
      VT1211_REG_IN_MIN(ix));
    data->in_max[ix] = vt1211_read8(data,
      VT1211_REG_IN_MAX(ix));
   }
  }


  for (ix = 0; ix < ARRAY_SIZE(data->temp); ix++) {
   if (ISTEMP(ix, data->uch_config)) {
    data->temp[ix] = vt1211_read8(data,
      regtemp[ix]);
    data->temp_max[ix] = vt1211_read8(data,
      regtempmax[ix]);
    data->temp_hyst[ix] = vt1211_read8(data,
      regtemphyst[ix]);
   }
  }


  for (ix = 0; ix < ARRAY_SIZE(data->fan); ix++) {
   data->fan[ix] = vt1211_read8(data,
      VT1211_REG_FAN(ix));
   data->fan_min[ix] = vt1211_read8(data,
      VT1211_REG_FAN_MIN(ix));
   data->pwm[ix] = vt1211_read8(data,
      VT1211_REG_PWM(ix));
  }
  val = vt1211_read8(data, VT1211_REG_FAN_DIV);
  data->fan_div[0] = (val >> 4) & 3;
  data->fan_div[1] = (val >> 6) & 3;
  data->fan_ctl = val & 0xf;

  val = vt1211_read8(data, VT1211_REG_PWM_CTL);
  data->pwm_ctl[0] = val & 0xf;
  data->pwm_ctl[1] = (val >> 4) & 0xf;

  data->pwm_clk = vt1211_read8(data, VT1211_REG_PWM_CLK);


  data->pwm_auto_pwm[0][1] = vt1211_read8(data,
      VT1211_REG_PWM_AUTO_PWM(0, 1));
  data->pwm_auto_pwm[0][2] = vt1211_read8(data,
      VT1211_REG_PWM_AUTO_PWM(0, 2));
  data->pwm_auto_pwm[1][1] = vt1211_read8(data,
      VT1211_REG_PWM_AUTO_PWM(1, 1));
  data->pwm_auto_pwm[1][2] = vt1211_read8(data,
      VT1211_REG_PWM_AUTO_PWM(1, 2));
  for (ix = 0; ix < ARRAY_SIZE(data->pwm_auto_temp); ix++) {
   data->pwm_auto_temp[ix] = vt1211_read8(data,
      VT1211_REG_PWM_AUTO_TEMP(ix));
  }


  data->alarms = (vt1211_read8(data, VT1211_REG_ALARM2) << 8) |
    vt1211_read8(data, VT1211_REG_ALARM1);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
