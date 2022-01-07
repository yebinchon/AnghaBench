
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct dvb_usb_device {TYPE_1__* desc; } ;
struct TYPE_2__ {char* name; } ;


 int dvb_usb_exit (struct dvb_usb_device*) ;
 int info (char*,char const*) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

void dvb_usb_device_exit(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 const char *name = "generic DVB-USB module";

 usb_set_intfdata(intf, ((void*)0));
 if (d != ((void*)0) && d->desc != ((void*)0)) {
  name = d->desc->name;
  dvb_usb_exit(d);
 }
 info("%s successfully deinitialized and disconnected.", name);

}
