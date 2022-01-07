
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct qt1010_priv {size_t reg20_init_val; size_t reg25_init_val; size_t reg1f_init_val; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct qt1010_priv* tuner_priv; } ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int oper; int val; int reg; } ;
typedef TYPE_2__ qt1010_i2c_oper_t ;


 size_t ARRAY_SIZE (TYPE_2__*) ;



 int qt1010_init_meas1 (struct qt1010_priv*,int ,int ,int,size_t*) ;
 int qt1010_init_meas2 (struct qt1010_priv*,size_t,size_t*) ;
 int qt1010_readreg (struct qt1010_priv*,int ,size_t*) ;
 int qt1010_set_params (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int qt1010_writereg (struct qt1010_priv*,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int qt1010_init(struct dvb_frontend *fe)
{
 struct qt1010_priv *priv = fe->tuner_priv;
 struct dvb_frontend_parameters params;
 int err = 0;
 u8 i, tmpval, *valptr = ((void*)0);

 qt1010_i2c_oper_t i2c_data[] = {
  { 128, 0x01, 0x80 },
  { 128, 0x0d, 0x84 },
  { 128, 0x0e, 0xb7 },
  { 128, 0x2a, 0x23 },
  { 128, 0x2c, 0xdc },
  { 130, 0x25, 0x40 },
  { 130, 0x81, 0xff },
  { 128, 0x2b, 0x70 },
  { 128, 0x2a, 0x23 },
  { 130, 0x26, 0x08 },
  { 130, 0x82, 0xff },
  { 128, 0x05, 0x14 },
  { 128, 0x06, 0x44 },
  { 128, 0x07, 0x28 },
  { 128, 0x08, 0x0b },
  { 128, 0x11, 0xfd },
  { 130, 0x22, 0x0d },
  { 130, 0xd0, 0xff },
  { 128, 0x06, 0x40 },
  { 128, 0x16, 0xf0 },
  { 128, 0x02, 0x38 },
  { 128, 0x03, 0x18 },
  { 128, 0x20, 0xe0 },
  { 130, 0x1f, 0x20 },
  { 130, 0x84, 0xff },
  { 129, 0x20, 0x20 },
  { 128, 0x03, 0x19 },
  { 128, 0x02, 0x3f },
  { 128, 0x21, 0x53 },
  { 129, 0x21, 0xff },
  { 128, 0x11, 0xfd },
  { 128, 0x05, 0x34 },
  { 128, 0x06, 0x44 },
  { 128, 0x08, 0x08 }
 };

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 for (i = 0; i < ARRAY_SIZE(i2c_data); i++) {
  switch (i2c_data[i].oper) {
  case 128:
   err = qt1010_writereg(priv, i2c_data[i].reg,
           i2c_data[i].val);
   break;
  case 129:
   if (i2c_data[i].val == 0x20)
    valptr = &priv->reg20_init_val;
   else
    valptr = &tmpval;
   err = qt1010_readreg(priv, i2c_data[i].reg, valptr);
   break;
  case 130:
   if (i2c_data[i].val == 0x25)
    valptr = &priv->reg25_init_val;
   else if (i2c_data[i].val == 0x1f)
    valptr = &priv->reg1f_init_val;
   else
    valptr = &tmpval;
   err = qt1010_init_meas1(priv, i2c_data[i+1].reg,
      i2c_data[i].reg,
      i2c_data[i].val, valptr);
   i++;
   break;
  }
  if (err) return err;
 }

 for (i = 0x31; i < 0x3a; i++)
  if ((err = qt1010_init_meas2(priv, i, &tmpval)))
   return err;

 params.frequency = 545000000;

 return qt1010_set_params(fe, &params);
}
