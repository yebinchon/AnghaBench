
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int CMD_I2C_XFER ;
 int EAGAIN ;
 int I2C_M_RD ;
 int err (char*) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ttusb2_msg (struct dvb_usb_device*,int ,int*,int,int*,int) ;
 int warn (char*) ;

__attribute__((used)) static int ttusb2_i2c_xfer(struct i2c_adapter *adap,struct i2c_msg msg[],int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 static u8 obuf[60], ibuf[60];
 int i,read;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 if (num > 2)
  warn("more than 2 i2c messages at a time is not handled yet. TODO.");

 for (i = 0; i < num; i++) {
  read = i+1 < num && (msg[i+1].flags & I2C_M_RD);

  obuf[0] = (msg[i].addr << 1) | read;
  obuf[1] = msg[i].len;


  if (read)
   obuf[2] = msg[i+1].len;
  else
   obuf[2] = 0;

  memcpy(&obuf[3],msg[i].buf,msg[i].len);

  if (ttusb2_msg(d, CMD_I2C_XFER, obuf, msg[i].len+3, ibuf, obuf[2] + 3) < 0) {
   err("i2c transfer failed.");
   break;
  }

  if (read) {
   memcpy(msg[i+1].buf,&ibuf[3],msg[i+1].len);
   i++;
  }
 }

 mutex_unlock(&d->i2c_mutex);
 return i;
}
