
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
struct tda1004x_state {TYPE_2__* config; } ;
struct saa7134_dev {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_8__ {int bandwidth; } ;
struct TYPE_9__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_4__ u; } ;
struct TYPE_10__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_5__ ops; struct tda1004x_state* demodulator_priv; TYPE_1__* dvb; } ;
struct TYPE_7__ {int tuner_address; } ;
struct TYPE_6__ {struct saa7134_dev* priv; } ;





 int EINVAL ;
 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int wprintk (char*,int) ;

__attribute__((used)) static int philips_tda6651_pll_set(struct dvb_frontend *fe, struct dvb_frontend_parameters *params)
{
 struct saa7134_dev *dev = fe->dvb->priv;
 struct tda1004x_state *state = fe->demodulator_priv;
 u8 addr = state->config->tuner_address;
 u8 tuner_buf[4];
 struct i2c_msg tuner_msg = {.addr = addr,.flags = 0,.buf = tuner_buf,.len =
   sizeof(tuner_buf) };
 int tuner_frequency = 0;
 u8 band, cp, filter;


 tuner_frequency = params->frequency + 36166000;
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
 else if (params->frequency < 161000000)
  band = 1;
 else if (params->frequency < 444000000)
  band = 2;
 else if (params->frequency < 861000000)
  band = 4;
 else
  return -EINVAL;


 switch (params->u.ofdm.bandwidth) {
 case 130:
  filter = 0;
  break;

 case 129:
  filter = 0;
  break;

 case 128:
  filter = 1;
  break;

 default:
  return -EINVAL;
 }




 tuner_frequency = (((params->frequency / 1000) * 6) + 217496) / 1000;


 tuner_buf[0] = (tuner_frequency >> 8) & 0x7f;
 tuner_buf[1] = tuner_frequency & 0xff;
 tuner_buf[2] = 0xca;
 tuner_buf[3] = (cp << 5) | (filter << 3) | band;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&dev->i2c_adap, &tuner_msg, 1) != 1) {
  wprintk("could not write to tuner at addr: 0x%02x\n",
   addr << 1);
  return -EIO;
 }
 msleep(1);
 return 0;
}
