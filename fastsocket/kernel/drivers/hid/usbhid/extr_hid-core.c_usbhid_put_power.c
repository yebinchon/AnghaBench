
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int intf; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int usb_autopm_put_interface (int ) ;

void usbhid_put_power(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;

 usb_autopm_put_interface(usbhid->intf);
}
