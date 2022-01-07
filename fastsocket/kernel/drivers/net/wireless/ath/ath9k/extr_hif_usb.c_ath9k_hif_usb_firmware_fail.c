
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hif_device_usb {int fw_done; TYPE_1__* udev; } ;
struct device {struct device* parent; } ;
struct TYPE_2__ {struct device dev; } ;


 int complete (int *) ;
 int device_lock (struct device*) ;
 int device_release_driver (struct device*) ;
 int device_unlock (struct device*) ;

__attribute__((used)) static void ath9k_hif_usb_firmware_fail(struct hif_device_usb *hif_dev)
{
 struct device *dev = &hif_dev->udev->dev;
 struct device *parent = dev->parent;

 complete(&hif_dev->fw_done);

 if (parent)
  device_lock(parent);

 device_release_driver(dev);

 if (parent)
  device_unlock(parent);
}
