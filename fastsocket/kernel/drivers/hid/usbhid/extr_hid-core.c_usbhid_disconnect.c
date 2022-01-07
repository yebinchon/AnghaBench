
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int dummy; } ;
struct usb_interface {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 scalar_t__ WARN_ON (int) ;
 int hid_destroy_device (struct hid_device*) ;
 int kfree (struct usbhid_device*) ;
 struct hid_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void usbhid_disconnect(struct usb_interface *intf)
{
 struct hid_device *hid = usb_get_intfdata(intf);
 struct usbhid_device *usbhid;

 if (WARN_ON(!hid))
  return;

 usbhid = hid->driver_data;
 hid_destroy_device(hid);
 kfree(usbhid);
}
