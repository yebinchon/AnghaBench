
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ B43legacy_STAT_INITIALIZED ;
 int B43legacy_WARN_ON (int) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int dev_attr_interference ;
 int dev_attr_shortpreamble ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

int b43legacy_sysfs_register(struct b43legacy_wldev *wldev)
{
 struct device *dev = wldev->dev->dev;
 int err;

 B43legacy_WARN_ON(b43legacy_status(wldev) !=
     B43legacy_STAT_INITIALIZED);

 err = device_create_file(dev, &dev_attr_interference);
 if (err)
  goto out;
 err = device_create_file(dev, &dev_attr_shortpreamble);
 if (err)
  goto err_remove_interfmode;

out:
 return err;
err_remove_interfmode:
 device_remove_file(dev, &dev_attr_interference);
 goto out;
}
