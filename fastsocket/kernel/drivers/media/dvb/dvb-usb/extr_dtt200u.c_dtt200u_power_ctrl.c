
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int SET_INIT ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int *,int) ;

__attribute__((used)) static int dtt200u_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 b = SET_INIT;

 if (onoff)
  dvb_usb_generic_write(d,&b,2);

 return 0;
}
