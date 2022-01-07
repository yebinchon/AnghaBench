
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usbhid_device {TYPE_1__* intf; } ;
struct hid_device {int open; struct usbhid_device* driver_data; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;


 int EIO ;
 int hid_io_error (struct hid_device*) ;
 int hid_open_mut ;
 scalar_t__ hid_start_in (struct hid_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;

int usbhid_open(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;
 int res;

 mutex_lock(&hid_open_mut);
 if (!hid->open++) {
  res = usb_autopm_get_interface(usbhid->intf);

  if (res < 0) {
   hid->open--;
   mutex_unlock(&hid_open_mut);
   return -EIO;
  }
  usbhid->intf->needs_remote_wakeup = 1;
  if (hid_start_in(hid))
   hid_io_error(hid);

  usb_autopm_put_interface(usbhid->intf);
 }
 mutex_unlock(&hid_open_mut);
 return 0;
}
