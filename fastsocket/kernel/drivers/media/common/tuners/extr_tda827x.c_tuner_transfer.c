
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda827x_priv {int i2c_adap; } ;
struct i2c_msg {int dummy; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct tda827x_priv* tuner_priv; } ;


 int EIO ;
 int i2c_transfer (int ,struct i2c_msg*,int const) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int tuner_transfer(struct dvb_frontend *fe,
     struct i2c_msg *msg,
     const int size)
{
 int rc;
 struct tda827x_priv *priv = fe->tuner_priv;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 rc = i2c_transfer(priv->i2c_adap, msg, size);
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 if (rc >= 0 && rc != size)
  return -EIO;

 return rc;
}
