
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * adap; } ;
struct tuner_simple_priv {TYPE_2__* tun; TYPE_3__ i2c_props; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct tuner_simple_priv* tuner_priv; } ;
struct TYPE_5__ {int* initdata; } ;


 int EINVAL ;
 int stub1 (struct dvb_frontend*,int) ;
 int tuner_i2c_xfer_send (TYPE_3__*,int*,int) ;

__attribute__((used)) static int simple_init(struct dvb_frontend *fe)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;

 if (priv->i2c_props.adap == ((void*)0))
  return -EINVAL;

 if (priv->tun->initdata) {
  int ret;

  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 1);

  ret = tuner_i2c_xfer_send(&priv->i2c_props,
       priv->tun->initdata + 1,
       priv->tun->initdata[0]);
  if (ret != priv->tun->initdata[0])
   return ret;
 }

 return 0;
}
