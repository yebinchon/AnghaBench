
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct usb_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ar9170 {int fw_load_wait; struct usb_device* udev; } ;


 int complete (int *) ;
 int device_lock (struct device*) ;
 int device_release_driver (TYPE_1__*) ;
 int device_unlock (struct device*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void carl9170_usb_firmware_failed(struct ar9170 *ar)
{
 struct device *parent = ar->udev->dev.parent;
 struct usb_device *udev;







 udev = ar->udev;

 complete(&ar->fw_load_wait);


 if (parent)
  device_lock(parent);

 device_release_driver(&udev->dev);
 if (parent)
  device_unlock(parent);

 usb_put_dev(udev);
}
