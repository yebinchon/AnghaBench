
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dvb_usb_device {int udev; } ;


 int EINVAL ;
 int GL861_REQ_I2C_DATA_CTRL_WRITE ;
 int GL861_WRITE ;
 int deb_xfer (char*,...) ;
 int udelay (int) ;
 int usb_control_msg (int ,int ,int,int,scalar_t__,scalar_t__,int*,scalar_t__,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int gl861_i2c_ctrlmsg_data(struct dvb_usb_device *d, u8 addr,
      u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 u16 index = wbuf[0];
 u16 value = addr << (8 + 1);
 int wo = (rbuf == ((void*)0) || rlen == 0);
 u8 req, type;

 deb_xfer("write to PLL:0x%02x via FE reg:0x%02x, len:%d\n",
   wbuf[1], wbuf[0], wlen - 1);

 if (wo && wlen >= 2) {
  req = GL861_REQ_I2C_DATA_CTRL_WRITE;
  type = GL861_WRITE;
  udelay(20);
  return usb_control_msg(d->udev, usb_sndctrlpipe(d->udev, 0),
           req, type, value, index,
           &wbuf[1], wlen - 1, 2000);
 }

 deb_xfer("not supported ctrl-msg, aborting.");
 return -EINVAL;
}
