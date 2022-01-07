
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct req_t {int value; int index; int* data; scalar_t__ data_len; int cmd; } ;
struct i2c_msg {int flags; int addr; int* buf; scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;
typedef int req ;
struct TYPE_2__ {int demod_address; } ;


 int DEMOD_READ ;
 int DEMOD_WRITE ;
 int EAGAIN ;
 int EINVAL ;
 int EPERM ;
 int I2C_M_RD ;
 int I2C_WRITE ;
 int ce6230_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;
 TYPE_1__ ce6230_zl10353_config ;
 int err (char*) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int memset (struct req_t*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ce6230_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msg[],
      int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 int i = 0;
 struct req_t req;
 int ret = 0;
 memset(&req, 0, sizeof(req));

 if (num > 2)
  return -EINVAL;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 while (i < num) {
  if (num > i + 1 && (msg[i+1].flags & I2C_M_RD)) {
   if (msg[i].addr ==
    ce6230_zl10353_config.demod_address) {
    req.cmd = DEMOD_READ;
    req.value = msg[i].addr >> 1;
    req.index = msg[i].buf[0];
    req.data_len = msg[i+1].len;
    req.data = &msg[i+1].buf[0];
    ret = ce6230_ctrl_msg(d, &req);
   } else {
    err("i2c read not implemented");
    ret = -EPERM;
   }
   i += 2;
  } else {
   if (msg[i].addr ==
    ce6230_zl10353_config.demod_address) {
    req.cmd = DEMOD_WRITE;
    req.value = msg[i].addr >> 1;
    req.index = msg[i].buf[0];
    req.data_len = msg[i].len-1;
    req.data = &msg[i].buf[1];
    ret = ce6230_ctrl_msg(d, &req);
   } else {
    req.cmd = I2C_WRITE;
    req.value = 0x2000 + (msg[i].addr >> 1);
    req.index = 0x0000;
    req.data_len = msg[i].len;
    req.data = &msg[i].buf[0];
    ret = ce6230_ctrl_msg(d, &req);
   }
   i += 1;
  }
  if (ret)
   break;
 }

 mutex_unlock(&d->i2c_mutex);
 return ret ? ret : i;
}
