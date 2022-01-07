
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int udev; } ;


 int DTV5100_DEMOD_ADDR ;
 int DTV5100_DEMOD_READ ;
 int DTV5100_DEMOD_WRITE ;
 int DTV5100_TUNER_READ ;
 int DTV5100_TUNER_WRITE ;
 int DTV5100_USB_TIMEOUT ;
 int EINVAL ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int msleep (int) ;
 int usb_control_msg (int ,int ,int,int,int,int,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static int dtv5100_i2c_msg(struct dvb_usb_device *d, u8 addr,
      u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 u8 request;
 u8 type;
 u16 value;
 u16 index;

 switch (wlen) {
 case 1:

  request = (addr == DTV5100_DEMOD_ADDR ? DTV5100_DEMOD_READ :
       DTV5100_TUNER_READ);
  type = USB_TYPE_VENDOR | USB_DIR_IN;
  value = 0;
  break;
 case 2:

  request = (addr == DTV5100_DEMOD_ADDR ? DTV5100_DEMOD_WRITE :
       DTV5100_TUNER_WRITE);
  type = USB_TYPE_VENDOR | USB_DIR_OUT;
  value = wbuf[1];
  break;
 default:
  warn("wlen = %x, aborting.", wlen);
  return -EINVAL;
 }
 index = (addr << 8) + wbuf[0];

 msleep(1);
 return usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0), request,
          type, value, index, rbuf, rlen,
          DTV5100_USB_TIMEOUT);
}
