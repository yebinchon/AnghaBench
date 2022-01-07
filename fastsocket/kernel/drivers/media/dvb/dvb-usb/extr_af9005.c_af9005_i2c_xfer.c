
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {scalar_t__ len; int * buf; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int EAGAIN ;
 int af9005_i2c_read (struct dvb_usb_device*,int ,int ,int *,int) ;
 int af9005_i2c_write (struct dvb_usb_device*,int ,int ,int *,scalar_t__) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int warn (char*) ;

__attribute__((used)) static int af9005_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msg[],
      int num)
{


 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 int ret;
 u8 reg, addr;
 u8 *value;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 if (num > 2)
  warn("more than 2 i2c messages at a time is not handled yet. TODO.");

 if (num == 2) {

  reg = *msg[0].buf;
  addr = msg[0].addr;
  value = msg[1].buf;
  ret = af9005_i2c_read(d, addr, reg, value, 1);
  if (ret == 0)
   ret = 2;
 } else {

  reg = msg[0].buf[0];
  addr = msg[0].addr;
  value = &msg[0].buf[1];
  ret = af9005_i2c_write(d, addr, reg, value, msg[0].len - 1);
  if (ret == 0)
   ret = 1;
 }

 mutex_unlock(&d->i2c_mutex);
 return ret;
}
