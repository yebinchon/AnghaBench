
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {TYPE_1__* intf; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int hid_io_error (struct hid_device*) ;
 scalar_t__ hid_start_in (struct hid_device*) ;

__attribute__((used)) static void hid_retry_timeout(unsigned long _hid)
{
 struct hid_device *hid = (struct hid_device *) _hid;
 struct usbhid_device *usbhid = hid->driver_data;

 dev_dbg(&usbhid->intf->dev, "retrying intr urb\n");
 if (hid_start_in(hid))
  hid_io_error(hid);
}
