
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int dvb_usb_generic_rw (struct dvb_usb_device*,int *,int,int *,int,int ) ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int cxusb_ctrl_msg(struct dvb_usb_device *d,
     u8 cmd, u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
 int wo = (rbuf == ((void*)0) || rlen == 0);
 u8 sndbuf[1+wlen];
 memset(sndbuf, 0, 1+wlen);

 sndbuf[0] = cmd;
 memcpy(&sndbuf[1], wbuf, wlen);
 if (wo)
  return dvb_usb_generic_write(d, sndbuf, 1+wlen);
 else
  return dvb_usb_generic_rw(d, sndbuf, 1+wlen, rbuf, rlen, 0);
}
