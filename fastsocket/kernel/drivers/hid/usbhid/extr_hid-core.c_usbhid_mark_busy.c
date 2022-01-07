
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {struct usb_interface* intf; } ;
struct usb_interface {int dummy; } ;


 int interface_to_usbdev (struct usb_interface*) ;
 int usb_mark_last_busy (int ) ;

__attribute__((used)) static void usbhid_mark_busy(struct usbhid_device *usbhid)
{
 struct usb_interface *intf = usbhid->intf;

 usb_mark_last_busy(interface_to_usbdev(intf));
}
