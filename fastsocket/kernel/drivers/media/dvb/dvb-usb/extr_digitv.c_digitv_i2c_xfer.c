
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; scalar_t__ len; int * buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int EAGAIN ;
 int I2C_M_RD ;
 int USB_READ_COFDM ;
 int USB_WRITE_COFDM ;
 scalar_t__ digitv_ctrl_msg (struct dvb_usb_device*,int ,int ,int *,scalar_t__,int *,scalar_t__) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int warn (char*) ;

__attribute__((used)) static int digitv_i2c_xfer(struct i2c_adapter *adap,struct i2c_msg msg[],int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 int i;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 if (num > 2)
  warn("more than 2 i2c messages at a time is not handled yet. TODO.");

 for (i = 0; i < num; i++) {

  if (i+1 < num && (msg[i+1].flags & I2C_M_RD)) {
   if (digitv_ctrl_msg(d, USB_READ_COFDM, msg[i].buf[0], ((void*)0), 0,
      msg[i+1].buf,msg[i+1].len) < 0)
    break;
   i++;
  } else
   if (digitv_ctrl_msg(d,USB_WRITE_COFDM, msg[i].buf[0],
      &msg[i].buf[1],msg[i].len-1,((void*)0),0) < 0)
    break;
 }

 mutex_unlock(&d->i2c_mutex);
 return i;
}
