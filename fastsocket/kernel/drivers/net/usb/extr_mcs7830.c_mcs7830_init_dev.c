
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int mcs7830_get_address (struct usbnet*) ;
 int mcs7830_rev_C_fixup (struct usbnet*) ;
 int mcs7830_set_autoneg (struct usbnet*,int ) ;

__attribute__((used)) static int mcs7830_init_dev(struct usbnet *dev)
{
 int ret;
 int retry;


 ret = -EINVAL;
 for (retry = 0; retry < 5 && ret; retry++)
  ret = mcs7830_get_address(dev);
 if (ret) {
  dev_warn(&dev->udev->dev, "Cannot read MAC address\n");
  goto out;
 }


 ret = mcs7830_set_autoneg(dev, 0);
 if (ret) {
  dev_info(&dev->udev->dev, "Cannot set autoneg\n");
  goto out;
 }

 mcs7830_rev_C_fixup(dev);
 ret = 0;
out:
 return ret;
}
