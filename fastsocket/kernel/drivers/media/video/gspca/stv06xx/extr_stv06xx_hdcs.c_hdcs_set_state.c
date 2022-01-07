
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {struct hdcs* sensor_priv; } ;
struct hdcs {int state; } ;
typedef enum hdcs_power_state { ____Placeholder_hdcs_power_state } hdcs_power_state ;


 int EINVAL ;
 int HDCS_REG_CONTROL (struct sd*) ;
 int HDCS_RUN_ENABLE ;
 int HDCS_SLEEP_MODE ;
 int HDCS_STATE_IDLE ;


 int stv06xx_write_sensor (struct sd*,int ,int ) ;

__attribute__((used)) static int hdcs_set_state(struct sd *sd, enum hdcs_power_state state)
{
 struct hdcs *hdcs = sd->sensor_priv;
 u8 val;
 int ret;

 if (hdcs->state == state)
  return 0;


 if (hdcs->state != HDCS_STATE_IDLE) {
  ret = stv06xx_write_sensor(sd, HDCS_REG_CONTROL(sd), 0);
  if (ret)
   return ret;
 }

 hdcs->state = HDCS_STATE_IDLE;

 if (state == HDCS_STATE_IDLE)
  return 0;

 switch (state) {
 case 128:
  val = HDCS_SLEEP_MODE;
  break;

 case 129:
  val = HDCS_RUN_ENABLE;
  break;

 default:
  return -EINVAL;
 }

 ret = stv06xx_write_sensor(sd, HDCS_REG_CONTROL(sd), val);


 if (!ret)
  hdcs->state = state;

 return ret;
}
