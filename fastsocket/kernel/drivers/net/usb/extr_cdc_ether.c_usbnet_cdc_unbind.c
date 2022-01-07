
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct cdc_state {struct usb_interface* control; struct usb_interface* data; } ;


 struct usb_driver* driver_of (struct usb_interface*) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

void usbnet_cdc_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct cdc_state *info = (void *) &dev->data;
 struct usb_driver *driver = driver_of(intf);


 if (intf == info->control && info->data) {

  usb_set_intfdata(info->data, ((void*)0));
  usb_driver_release_interface(driver, info->data);
  info->data = ((void*)0);
 }


 else if (intf == info->data && info->control) {

  usb_set_intfdata(info->control, ((void*)0));
  usb_driver_release_interface(driver, info->control);
  info->control = ((void*)0);
 }
}
