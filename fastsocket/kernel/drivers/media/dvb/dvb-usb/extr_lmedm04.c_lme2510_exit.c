
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dvb_usb_device {int dummy; } ;


 int dvb_usb_device_exit (struct usb_interface*) ;
 int kfree (void*) ;
 void* lme2510_exit_int (struct dvb_usb_device*) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

void lme2510_exit(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 void *usb_buffer;

 if (d != ((void*)0)) {
  usb_buffer = lme2510_exit_int(d);
  dvb_usb_device_exit(intf);
  kfree(usb_buffer);
 }
}
