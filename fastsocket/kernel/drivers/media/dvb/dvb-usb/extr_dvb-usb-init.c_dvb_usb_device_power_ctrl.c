
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* power_ctrl ) (struct dvb_usb_device*,int) ;} ;
struct dvb_usb_device {int powered; TYPE_1__ props; } ;


 int deb_info (char*,int) ;
 int stub1 (struct dvb_usb_device*,int) ;

int dvb_usb_device_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 if (onoff)
  d->powered++;
 else
  d->powered--;

 if (d->powered == 0 || (onoff && d->powered == 1)) {
  deb_info("power control: %d\n", onoff);
  if (d->props.power_ctrl)
   return d->props.power_ctrl(d, onoff);
 }
 return 0;
}
