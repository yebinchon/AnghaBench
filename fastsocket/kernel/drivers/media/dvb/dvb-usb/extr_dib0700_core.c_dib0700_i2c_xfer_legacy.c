
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int flags; int buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int EAGAIN ;
 int I2C_M_RD ;
 int REQUEST_I2C_READ ;
 int REQUEST_I2C_WRITE ;
 int deb_info (char*,int) ;
 int dib0700_ctrl_rd (struct dvb_usb_device*,int*,int,int ,int) ;
 scalar_t__ dib0700_ctrl_wr (struct dvb_usb_device*,int*,int) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (int*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib0700_i2c_xfer_legacy(struct i2c_adapter *adap,
       struct i2c_msg *msg, int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 int i,len;
 u8 buf[255];

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 for (i = 0; i < num; i++) {

  buf[1] = msg[i].addr << 1;

  memcpy(&buf[2], msg[i].buf, msg[i].len);


  if (i+1 < num && (msg[i+1].flags & I2C_M_RD)) {
   buf[0] = REQUEST_I2C_READ;
   buf[1] |= 1;


   if ((len = dib0700_ctrl_rd(d, buf, msg[i].len + 2, msg[i+1].buf, msg[i+1].len)) <= 0) {
    deb_info("I2C read failed on address 0x%02x\n",
      msg[i].addr);
    break;
   }

   msg[i+1].len = len;

   i++;
  } else {
   buf[0] = REQUEST_I2C_WRITE;
   if (dib0700_ctrl_wr(d, buf, msg[i].len + 2) < 0)
    break;
  }
 }

 mutex_unlock(&d->i2c_mutex);
 return i;
}
