
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
struct av7110 {int i2c_adap; } ;
typedef int buf ;
struct TYPE_3__ {struct av7110* priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int alps_bsrv2_tuner_set_params(struct dvb_frontend* fe, struct dvb_frontend_parameters *params)
{
 struct av7110* av7110 = fe->dvb->priv;
 u8 pwr = 0;
 u8 buf[4];
 struct i2c_msg msg = { .addr = 0x61, .flags = 0, .buf = buf, .len = sizeof(buf) };
 u32 div = (params->frequency + 479500) / 125;

 if (params->frequency > 2000000) pwr = 3;
 else if (params->frequency > 1800000) pwr = 2;
 else if (params->frequency > 1600000) pwr = 1;
 else if (params->frequency > 1200000) pwr = 0;
 else if (params->frequency >= 1100000) pwr = 1;
 else pwr = 2;

 buf[0] = (div >> 8) & 0x7f;
 buf[1] = div & 0xff;
 buf[2] = ((div & 0x18000) >> 10) | 0x95;
 buf[3] = (pwr << 6) | 0x30;




 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer (&av7110->i2c_adap, &msg, 1) != 1)
  return -EIO;
 return 0;
}
