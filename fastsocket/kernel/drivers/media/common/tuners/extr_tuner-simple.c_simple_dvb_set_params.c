
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_6__ {int * adap; } ;
struct tuner_simple_priv {void* bandwidth; void* frequency; TYPE_3__ i2c_props; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct TYPE_4__ {int (* standby ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ analog_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct tuner_simple_priv* tuner_priv; } ;


 int EINVAL ;
 int simple_dvb_calc_regs (struct dvb_frontend*,struct dvb_frontend_parameters*,int *,int) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int) ;
 int tuner_i2c_xfer_send (TYPE_3__*,int *,int) ;

__attribute__((used)) static int simple_dvb_set_params(struct dvb_frontend *fe,
     struct dvb_frontend_parameters *params)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 u32 prev_freq, prev_bw;
 int ret;
 u8 buf[5];

 if (priv->i2c_props.adap == ((void*)0))
  return -EINVAL;

 prev_freq = priv->frequency;
 prev_bw = priv->bandwidth;

 ret = simple_dvb_calc_regs(fe, params, buf, 5);
 if (ret != 5)
  goto fail;


 if (fe->ops.analog_ops.standby)
  fe->ops.analog_ops.standby(fe);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);



 ret = tuner_i2c_xfer_send(&priv->i2c_props, buf+1, 4);
 if (ret != 4)
  goto fail;

 return 0;
fail:

 priv->frequency = prev_freq;
 priv->bandwidth = prev_bw;

 return ret;
}
