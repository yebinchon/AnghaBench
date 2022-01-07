
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tda827x_priv {TYPE_2__* i2c_adap; TYPE_1__* cfg; } ;
struct i2c_msg {unsigned char* buf; int len; int addr; int flags; } ;
struct dvb_frontend {int (* callback ) (int ,int ,int,int) ;struct tda827x_priv* tuner_priv; } ;
struct analog_parameters {int std; } ;
typedef int buf ;
struct TYPE_4__ {int algo_data; } ;
struct TYPE_3__ {int config; int switch_addr; } ;


 int DVB_FRONTEND_COMPONENT_TUNER ;
 int V4L2_STD_MN ;
 int dprintk (char*) ;
 int stub1 (int ,int ,int,int) ;
 int stub2 (int ,int ,int,int) ;
 int tuner_transfer (struct dvb_frontend*,struct i2c_msg*,int) ;

__attribute__((used)) static void tda827xa_lna_gain(struct dvb_frontend *fe, int high,
         struct analog_parameters *params)
{
 struct tda827x_priv *priv = fe->tuner_priv;
 unsigned char buf[] = {0x22, 0x01};
 int arg;
 int gp_func;
 struct i2c_msg msg = { .flags = 0, .buf = buf, .len = sizeof(buf) };

 if (((void*)0) == priv->cfg) {
  dprintk("tda827x_config not defined, cannot set LNA gain!\n");
  return;
 }
 msg.addr = priv->cfg->switch_addr;
 if (priv->cfg->config) {
  if (high)
   dprintk("setting LNA to high gain\n");
  else
   dprintk("setting LNA to low gain\n");
 }
 switch (priv->cfg->config) {
 case 0:
  break;
 case 1:
 case 2:
  if (params == ((void*)0)) {
   gp_func = 0;
   arg = 0;
  } else {

   gp_func = 1;
   if (params->std & V4L2_STD_MN)
    arg = 1;
   else
    arg = 0;
  }
  if (fe->callback)
   fe->callback(priv->i2c_adap->algo_data,
         DVB_FRONTEND_COMPONENT_TUNER,
         gp_func, arg);
  buf[1] = high ? 0 : 1;
  if (priv->cfg->config == 2)
   buf[1] = high ? 1 : 0;
  tuner_transfer(fe, &msg, 1);
  break;
 case 3:
  if (fe->callback)
   fe->callback(priv->i2c_adap->algo_data,
         DVB_FRONTEND_COMPONENT_TUNER, 0, high);
  break;
 }
}
