
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int usbnet_probe (struct usb_interface*,struct usb_device_id const*) ;

__attribute__((used)) static int
cdc_ncm_probe(struct usb_interface *udev, const struct usb_device_id *prod)
{
 return usbnet_probe(udev, prod);
}
