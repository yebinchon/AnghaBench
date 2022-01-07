
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
typedef int tuner_buf ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_7__ {int bandwidth; } ;
struct TYPE_8__ {TYPE_2__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_3__ u; } ;
struct TYPE_9__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_4__ ops; TYPE_1__* dvb; } ;
struct TYPE_10__ {int i2c_adap; } ;
struct budget_ci {TYPE_5__ budget; int tuner_pll_address; } ;
struct TYPE_6__ {scalar_t__ priv; } ;





 int EINVAL ;
 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int tda1004x_writereg (struct dvb_frontend*,int,int) ;

__attribute__((used)) static int philips_tdm1316l_tuner_set_params(struct dvb_frontend *fe, struct dvb_frontend_parameters *params)
{
 struct budget_ci *budget_ci = (struct budget_ci *) fe->dvb->priv;
 u8 tuner_buf[4];
 struct i2c_msg tuner_msg = {.addr = budget_ci->tuner_pll_address,.flags = 0,.buf = tuner_buf,.len = sizeof(tuner_buf) };
 int tuner_frequency = 0;
 u8 band, cp, filter;


 tuner_frequency = params->frequency + 36130000;
 if (tuner_frequency < 87000000)
  return -EINVAL;
 else if (tuner_frequency < 130000000)
  cp = 3;
 else if (tuner_frequency < 160000000)
  cp = 5;
 else if (tuner_frequency < 200000000)
  cp = 6;
 else if (tuner_frequency < 290000000)
  cp = 3;
 else if (tuner_frequency < 420000000)
  cp = 5;
 else if (tuner_frequency < 480000000)
  cp = 6;
 else if (tuner_frequency < 620000000)
  cp = 3;
 else if (tuner_frequency < 830000000)
  cp = 5;
 else if (tuner_frequency < 895000000)
  cp = 7;
 else
  return -EINVAL;


 if (params->frequency < 49000000)
  return -EINVAL;
 else if (params->frequency < 159000000)
  band = 1;
 else if (params->frequency < 444000000)
  band = 2;
 else if (params->frequency < 861000000)
  band = 4;
 else
  return -EINVAL;


 switch (params->u.ofdm.bandwidth) {
 case 130:
  tda1004x_writereg(fe, 0x0C, 0x14);
  filter = 0;
  break;

 case 129:
  tda1004x_writereg(fe, 0x0C, 0x80);
  filter = 0;
  break;

 case 128:
  tda1004x_writereg(fe, 0x0C, 0x14);
  filter = 1;
  break;

 default:
  return -EINVAL;
 }



 tuner_frequency = (((params->frequency / 1000) * 6) + 217280) / 1000;


 tuner_buf[0] = tuner_frequency >> 8;
 tuner_buf[1] = tuner_frequency & 0xff;
 tuner_buf[2] = 0xca;
 tuner_buf[3] = (cp << 5) | (filter << 3) | band;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&budget_ci->budget.i2c_adap, &tuner_msg, 1) != 1)
  return -EIO;

 msleep(1);
 return 0;
}
