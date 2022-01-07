
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int udev; } ;


 int EINVAL ;
 int GL861_READ ;
 int GL861_REQ_I2C_READ ;
 int GL861_REQ_I2C_WRITE ;
 int GL861_WRITE ;
 int msleep (int) ;
 int usb_control_msg (int ,int ,int,int,int,int,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static int gl861_i2c_msg(struct dvb_usb_device *d, u8 addr,
    u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 u16 index;
 u16 value = addr << (8 + 1);
 int wo = (rbuf == ((void*)0) || rlen == 0);
 u8 req, type;

 if (wo) {
  req = GL861_REQ_I2C_WRITE;
  type = GL861_WRITE;
 } else {
  req = GL861_REQ_I2C_READ;
  type = GL861_READ;
 }

 switch (wlen) {
 case 1:
  index = wbuf[0];
  break;
 case 2:
  index = wbuf[0];
  value = value + wbuf[1];
  break;
 default:
  warn("wlen = %x, aborting.", wlen);
  return -EINVAL;
 }

 msleep(1);

 return usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0), req, type,
          value, index, rbuf, rlen, 2000);
}
