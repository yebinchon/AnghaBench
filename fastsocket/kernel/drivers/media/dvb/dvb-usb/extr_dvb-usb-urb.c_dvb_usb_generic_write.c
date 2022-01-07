
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int dvb_usb_generic_rw (struct dvb_usb_device*,int *,int ,int *,int ,int ) ;

int dvb_usb_generic_write(struct dvb_usb_device *d, u8 *buf, u16 len)
{
 return dvb_usb_generic_rw(d,buf,len,((void*)0),0,0);
}
