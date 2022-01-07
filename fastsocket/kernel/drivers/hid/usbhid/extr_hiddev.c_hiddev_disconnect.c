
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {int intf; } ;
struct hiddev {int wait; TYPE_1__* hid; scalar_t__ open; int existancelock; scalar_t__ exist; } ;
struct hid_device {struct usbhid_device* driver_data; struct hiddev* hiddev; } ;
struct TYPE_2__ {size_t minor; } ;


 size_t HIDDEV_MINOR_BASE ;
 int hiddev_class ;
 int ** hiddev_table ;
 int kfree (struct hiddev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (int ,int *) ;
 int usbhid_close (TYPE_1__*) ;
 int wake_up_interruptible (int *) ;

void hiddev_disconnect(struct hid_device *hid)
{
 struct hiddev *hiddev = hid->hiddev;
 struct usbhid_device *usbhid = hid->driver_data;

 mutex_lock(&hiddev->existancelock);
 hiddev->exist = 0;
 mutex_unlock(&hiddev->existancelock);

 hiddev_table[hiddev->hid->minor - HIDDEV_MINOR_BASE] = ((void*)0);
 usb_deregister_dev(usbhid->intf, &hiddev_class);

 if (hiddev->open) {
  usbhid_close(hiddev->hid);
  wake_up_interruptible(&hiddev->wait);
 } else {
  kfree(hiddev);
 }
}
