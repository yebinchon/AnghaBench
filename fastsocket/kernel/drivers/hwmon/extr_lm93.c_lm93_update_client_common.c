
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm93_data {int block1; void* sf_tach_to_pwm; void* sfc2; void* sfc1; void* pwm_ramp_ctl; void** auto_pwm_min_hyst; void** boost_hyst; void** boost; void* prochot_interval; void* prochot_override; void* gpi; void** vccp_limits; void** prochot_max; void** vid; void* config; TYPE_1__* temp_lim; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {void* max; void* min; } ;


 int LM93_REG_BOOST (int) ;
 int LM93_REG_BOOST_HYST_12 ;
 int LM93_REG_BOOST_HYST_34 ;
 int LM93_REG_CONFIG ;
 int LM93_REG_GPI ;
 scalar_t__ LM93_REG_HOST_ERROR_1 ;
 int LM93_REG_PROCHOT_INTERVAL ;
 int LM93_REG_PROCHOT_MAX (int) ;
 int LM93_REG_PROCHOT_OVERRIDE ;
 int LM93_REG_PWM_MIN_HYST_12 ;
 int LM93_REG_PWM_MIN_HYST_34 ;
 int LM93_REG_PWM_RAMP_CTL ;
 int LM93_REG_SFC1 ;
 int LM93_REG_SFC2 ;
 int LM93_REG_SF_TACH_TO_PWM ;
 int LM93_REG_TEMP_MAX (int) ;
 int LM93_REG_TEMP_MIN (int) ;
 int LM93_REG_VCCP_LIMIT_OFF (int) ;
 int LM93_REG_VID (int) ;
 void* lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,scalar_t__,int ) ;

__attribute__((used)) static void lm93_update_client_common(struct lm93_data *data,
          struct i2c_client *client)
{
 int i;
 u8 *ptr;


 for (i = 0; i < 4; i++) {
  data->temp_lim[i].min =
   lm93_read_byte(client, LM93_REG_TEMP_MIN(i));
  data->temp_lim[i].max =
   lm93_read_byte(client, LM93_REG_TEMP_MAX(i));
 }


 data->config = lm93_read_byte(client, LM93_REG_CONFIG);


 for (i = 0; i < 2; i++)
  data->vid[i] = lm93_read_byte(client, LM93_REG_VID(i));


 for (i = 0; i < 2; i++)
  data->prochot_max[i] = lm93_read_byte(client,
    LM93_REG_PROCHOT_MAX(i));


 for (i = 0; i < 2; i++)
  data->vccp_limits[i] = lm93_read_byte(client,
    LM93_REG_VCCP_LIMIT_OFF(i));


 data->gpi = lm93_read_byte(client, LM93_REG_GPI);


 data->prochot_override = lm93_read_byte(client,
   LM93_REG_PROCHOT_OVERRIDE);


 data->prochot_interval = lm93_read_byte(client,
   LM93_REG_PROCHOT_INTERVAL);


 for (i = 0; i < 4; i++)
  data->boost[i] = lm93_read_byte(client, LM93_REG_BOOST(i));


 data->boost_hyst[0] = lm93_read_byte(client, LM93_REG_BOOST_HYST_12);
 data->boost_hyst[1] = lm93_read_byte(client, LM93_REG_BOOST_HYST_34);


 data->auto_pwm_min_hyst[0] =
   lm93_read_byte(client, LM93_REG_PWM_MIN_HYST_12);
 data->auto_pwm_min_hyst[1] =
   lm93_read_byte(client, LM93_REG_PWM_MIN_HYST_34);


 data->pwm_ramp_ctl = lm93_read_byte(client, LM93_REG_PWM_RAMP_CTL);


 data->sfc1 = lm93_read_byte(client, LM93_REG_SFC1);
 data->sfc2 = lm93_read_byte(client, LM93_REG_SFC2);
 data->sf_tach_to_pwm = lm93_read_byte(client,
   LM93_REG_SF_TACH_TO_PWM);


 for (i = 0, ptr = (u8 *)(&data->block1); i < 8; i++)
  lm93_write_byte(client, LM93_REG_HOST_ERROR_1 + i, *(ptr + i));
}
