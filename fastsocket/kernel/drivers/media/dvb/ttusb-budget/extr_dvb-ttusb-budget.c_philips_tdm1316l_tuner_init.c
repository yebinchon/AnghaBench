
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int td1316_init ;
struct ttusb {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
typedef int disable_mc44BC374c ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int philips_tdm1316l_tuner_init(struct dvb_frontend* fe)
{
 struct ttusb* ttusb = (struct ttusb*) fe->dvb->priv;
 static u8 td1316_init[] = { 0x0b, 0xf5, 0x85, 0xab };
 static u8 disable_mc44BC374c[] = { 0x1d, 0x74, 0xa0, 0x68 };
 struct i2c_msg tuner_msg = { .addr=0x60, .flags=0, .buf=td1316_init, .len=sizeof(td1316_init) };


 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&ttusb->i2c_adap, &tuner_msg, 1) != 1) return -EIO;
 msleep(1);


 tuner_msg.addr = 0x65;
 tuner_msg.buf = disable_mc44BC374c;
 tuner_msg.len = sizeof(disable_mc44BC374c);
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&ttusb->i2c_adap, &tuner_msg, 1) != 1) {
  i2c_transfer(&ttusb->i2c_adap, &tuner_msg, 1);
 }

 return 0;
}
