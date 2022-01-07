
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_disconnect (struct usb_interface*) ;

__attribute__((used)) static void cdc_ncm_disconnect(struct usb_interface *intf)
{
 struct usbnet *dev = usb_get_intfdata(intf);

 if (dev == ((void*)0))
  return;

 usbnet_disconnect(intf);
}
