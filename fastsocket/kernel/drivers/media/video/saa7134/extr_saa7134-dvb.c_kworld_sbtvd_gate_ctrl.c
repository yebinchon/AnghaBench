
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {int i2c_adap; } ;
struct i2c_msg {int addr; unsigned char* buf; int len; int flags; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct saa7134_dev* priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int msleep (int) ;
 int wprintk (char*) ;

__attribute__((used)) static int kworld_sbtvd_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct saa7134_dev *dev = fe->dvb->priv;

 unsigned char initmsg[] = {0x45, 0x97};
 unsigned char msg_enable[] = {0x45, 0xc1};
 unsigned char msg_disable[] = {0x45, 0x81};
 struct i2c_msg msg = {.addr = 0x4b, .flags = 0, .buf = initmsg, .len = 2};

 if (i2c_transfer(&dev->i2c_adap, &msg, 1) != 1) {
  wprintk("could not access the I2C gate\n");
  return -EIO;
 }
 if (enable)
  msg.buf = msg_enable;
 else
  msg.buf = msg_disable;
 if (i2c_transfer(&dev->i2c_adap, &msg, 1) != 1) {
  wprintk("could not access the I2C gate\n");
  return -EIO;
 }
 msleep(20);
 return 0;
}
