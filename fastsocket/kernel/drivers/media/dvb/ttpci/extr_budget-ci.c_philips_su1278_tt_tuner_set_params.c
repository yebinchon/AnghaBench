
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_7__ {int symbol_rate; } ;
struct TYPE_8__ {TYPE_2__ qpsk; } ;
struct dvb_frontend_parameters {int frequency; TYPE_3__ u; } ;
struct TYPE_9__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_4__ ops; TYPE_1__* dvb; } ;
struct TYPE_10__ {int i2c_adap; } ;
struct budget_ci {TYPE_5__ budget; } ;
typedef int buf ;
struct TYPE_6__ {scalar_t__ priv; } ;


 int EINVAL ;
 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int philips_su1278_tt_tuner_set_params(struct dvb_frontend *fe,
        struct dvb_frontend_parameters *params)
{
 struct budget_ci *budget_ci = (struct budget_ci *) fe->dvb->priv;
 u32 div;
 u8 buf[4];
 struct i2c_msg msg = {.addr = 0x60,.flags = 0,.buf = buf,.len = sizeof(buf) };

 if ((params->frequency < 950000) || (params->frequency > 2150000))
  return -EINVAL;

 div = (params->frequency + (500 - 1)) / 500;
 buf[0] = (div >> 8) & 0x7f;
 buf[1] = div & 0xff;
 buf[2] = 0x80 | ((div & 0x18000) >> 10) | 2;
 buf[3] = 0x20;

 if (params->u.qpsk.symbol_rate < 4000000)
  buf[3] |= 1;

 if (params->frequency < 1250000)
  buf[3] |= 0;
 else if (params->frequency < 1550000)
  buf[3] |= 0x40;
 else if (params->frequency < 2050000)
  buf[3] |= 0x80;
 else if (params->frequency < 2150000)
  buf[3] |= 0xC0;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&budget_ci->budget.i2c_adap, &msg, 1) != 1)
  return -EIO;
 return 0;
}
