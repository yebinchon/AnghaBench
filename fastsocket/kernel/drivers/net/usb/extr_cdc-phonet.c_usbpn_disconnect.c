
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbpn_dev {int disconnected; int dev; struct usb_interface* intf; struct usb_interface* data_intf; struct usb_device* usb; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;


 int unregister_netdev (int ) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct usbpn_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;
 int usbpn_driver ;

__attribute__((used)) static void usbpn_disconnect(struct usb_interface *intf)
{
 struct usbpn_dev *pnd = usb_get_intfdata(intf);
 struct usb_device *usb = pnd->usb;

 if (pnd->disconnected)
  return;

 pnd->disconnected = 1;
 usb_driver_release_interface(&usbpn_driver,
   (pnd->intf == intf) ? pnd->data_intf : pnd->intf);
 unregister_netdev(pnd->dev);
 usb_put_dev(usb);
}
