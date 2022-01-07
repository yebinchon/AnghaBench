
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tua6100_priv {int frequency; int i2c; int i2c_address; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct tua6100_priv* tuner_priv; } ;


 int EIO ;
 int _P ;
 int _R ;
 int _ri ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*,int) ;
 int stub4 (struct dvb_frontend*,int) ;

__attribute__((used)) static int tua6100_set_params(struct dvb_frontend *fe,
         struct dvb_frontend_parameters *params)
{
 struct tua6100_priv *priv = fe->tuner_priv;
 u32 div;
 u32 prediv;
 u8 reg0[] = { 0x00, 0x00 };
 u8 reg1[] = { 0x01, 0x00, 0x00, 0x00 };
 u8 reg2[] = { 0x02, 0x00, 0x00 };
 struct i2c_msg msg0 = { .addr = priv->i2c_address, .flags = 0, .buf = reg0, .len = 2 };
 struct i2c_msg msg1 = { .addr = priv->i2c_address, .flags = 0, .buf = reg1, .len = 4 };
 struct i2c_msg msg2 = { .addr = priv->i2c_address, .flags = 0, .buf = reg2, .len = 3 };







 if (params->frequency < 2000000) {
  reg0[1] = 0x03;
 } else {
  reg0[1] = 0x07;
 }


 if (params->frequency < 1630000) {
  reg1[1] = 0x2c;
 } else {
  reg1[1] = 0x0c;
 }
 if (32 == 64)
  reg1[1] |= 0x40;
 if (params->frequency >= 1525000)
  reg1[1] |= 0x80;


 reg2[1] = (4 >> 8) & 0x03;
 reg2[2] = 4;
 if (params->frequency < 1455000) {
  reg2[1] |= 0x1c;
 } else if (params->frequency < 1630000) {
  reg2[1] |= 0x0c;
 } else {
  reg2[1] |= 0x1c;
 }


 prediv = (params->frequency * 4) / (4000000 / 1000);
 div = prediv / 32;
 reg1[1] |= (div >> 9) & 0x03;
 reg1[2] = div >> 1;
 reg1[3] = (div << 7);
 priv->frequency = ((div * 32) * (4000000 / 1000)) / 4;


 reg1[3] |= (prediv - (div*32)) & 0x7f;





 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(priv->i2c, &msg0, 1) != 1)
  return -EIO;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(priv->i2c, &msg2, 1) != 1)
  return -EIO;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(priv->i2c, &msg1, 1) != 1)
  return -EIO;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return 0;
}
