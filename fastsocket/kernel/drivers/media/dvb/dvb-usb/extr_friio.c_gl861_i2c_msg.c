
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int udev; } ;
struct TYPE_2__ {int demod_address; } ;


 int EINVAL ;
 int GL861_READ ;
 int GL861_REQ_I2C_READ ;
 int GL861_REQ_I2C_WRITE ;
 int GL861_WRITE ;
 int JDVBT90502_2ND_I2C_REG ;
 int deb_xfer (char*,int) ;
 TYPE_1__ friio_fe_config ;
 int gl861_i2c_ctrlmsg_data (struct dvb_usb_device*,int,int*,int,int*,int) ;
 int msleep (int) ;
 int usb_control_msg (int ,unsigned int,int,int,int,int,int*,int,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int gl861_i2c_msg(struct dvb_usb_device *d, u8 addr,
    u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 u16 index;
 u16 value = addr << (8 + 1);
 int wo = (rbuf == ((void*)0) || rlen == 0);
 u8 req, type;
 unsigned int pipe;


 if (addr == friio_fe_config.demod_address &&
     wbuf[0] == JDVBT90502_2ND_I2C_REG)
  return gl861_i2c_ctrlmsg_data(d, addr, wbuf, wlen, rbuf, rlen);

 if (wo) {
  req = GL861_REQ_I2C_WRITE;
  type = GL861_WRITE;
  pipe = usb_sndctrlpipe(d->udev, 0);
 } else {
  req = GL861_REQ_I2C_READ;
  type = GL861_READ;
  pipe = usb_rcvctrlpipe(d->udev, 0);
 }

 switch (wlen) {
 case 1:
  index = wbuf[0];
  break;
 case 2:
  index = wbuf[0];
  value = value + wbuf[1];
  break;
 case 3:

  index = (wbuf[2] << 8) | wbuf[0];
  value = value + wbuf[1];
  break;
 default:
  deb_xfer("wlen = %x, aborting.", wlen);
  return -EINVAL;
 }
 msleep(1);
 return usb_control_msg(d->udev, pipe, req, type,
          value, index, rbuf, rlen, 2000);
}
