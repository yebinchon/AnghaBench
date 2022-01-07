
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_frequency {int frequency; int type; scalar_t__ tuner; } ;
struct saa7134_dev {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
typedef int off ;
struct TYPE_3__ {struct saa7134_dev* priv; } ;


 int V4L2_TUNER_DIGITAL_TV ;
 int antenna_pwr ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int mt352_pinnacle_init (struct dvb_frontend*) ;
 int pinnacle_antenna_pwr (struct saa7134_dev*,int ) ;
 int s_frequency ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_frequency*) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int tuner ;

__attribute__((used)) static int mt352_pinnacle_tuner_set_params(struct dvb_frontend* fe,
        struct dvb_frontend_parameters* params)
{
 u8 off[] = { 0x00, 0xf1};
 u8 on[] = { 0x00, 0x71};
 struct i2c_msg msg = {.addr=0x43, .flags=0, .buf=off, .len = sizeof(off)};

 struct saa7134_dev *dev = fe->dvb->priv;
 struct v4l2_frequency f;


 f.tuner = 0;
 f.type = V4L2_TUNER_DIGITAL_TV;
 f.frequency = params->frequency / 1000 * 16 / 1000;
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 i2c_transfer(&dev->i2c_adap, &msg, 1);
 saa_call_all(dev, tuner, s_frequency, &f);
 msg.buf = on;
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 i2c_transfer(&dev->i2c_adap, &msg, 1);

 pinnacle_antenna_pwr(dev, antenna_pwr);


 return mt352_pinnacle_init(fe);
}
