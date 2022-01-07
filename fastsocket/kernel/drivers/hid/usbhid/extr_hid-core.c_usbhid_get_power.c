
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int intf; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int usb_autopm_get_interface (int ) ;

int usbhid_get_power(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;

 return usb_autopm_get_interface(usbhid->intf);
}
