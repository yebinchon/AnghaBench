
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int AU6610_REQ_I2C_READ ;
 int AU6610_REQ_I2C_WRITE ;
 int au6610_usb_msg (struct dvb_usb_device*,int,int,int*,int ,int*,int ) ;

__attribute__((used)) static int au6610_i2c_msg(struct dvb_usb_device *d, u8 addr,
     u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 u8 request;
 u8 wo = (rbuf == ((void*)0) || rlen == 0);

 if (wo) {
  request = AU6610_REQ_I2C_WRITE;
 } else {
  request = AU6610_REQ_I2C_READ;
 }

 return au6610_usb_msg(d, request, addr, wbuf, wlen, rbuf, rlen);
}
