
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tda18271_priv {int gate; int mode; } ;
struct TYPE_3__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ analog_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct tda18271_priv* tuner_priv; } ;
typedef enum tda18271_i2c_gate { ____Placeholder_tda18271_i2c_gate } tda18271_i2c_gate ;


 int EINVAL ;





 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int tda18271_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 enum tda18271_i2c_gate gate;
 int ret = 0;

 switch (priv->gate) {
 case 128:
 case 130:
  gate = priv->gate;
  break;
 case 129:
 default:
  switch (priv->mode) {
  case 131:
   gate = 128;
   break;
  case 132:
  default:
   gate = 130;
   break;
  }
 }

 switch (gate) {
 case 130:
  if (fe->ops.analog_ops.i2c_gate_ctrl)
   ret = fe->ops.analog_ops.i2c_gate_ctrl(fe, enable);
  break;
 case 128:
  if (fe->ops.i2c_gate_ctrl)
   ret = fe->ops.i2c_gate_ctrl(fe, enable);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
