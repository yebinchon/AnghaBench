
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_flags; } ;
struct device {int kobj; } ;


 int IPATH_HAS_MULT_IB_SPEED ;
 int dev_attr_group ;
 int dev_attr_jint_idle_ticks ;
 int dev_attr_jint_max_packets ;
 int dev_attr_reset ;
 int dev_counter_attr_group ;
 int dev_ibcfg_attr_group ;
 int device_remove_file (struct device*,int *) ;
 int sysfs_remove_group (int *,int *) ;

void ipath_device_remove_group(struct device *dev, struct ipath_devdata *dd)
{
 sysfs_remove_group(&dev->kobj, &dev_counter_attr_group);

 if (dd->ipath_flags & IPATH_HAS_MULT_IB_SPEED) {
  sysfs_remove_group(&dev->kobj, &dev_ibcfg_attr_group);
  device_remove_file(dev, &dev_attr_jint_idle_ticks);
  device_remove_file(dev, &dev_attr_jint_max_packets);
 }

 sysfs_remove_group(&dev->kobj, &dev_attr_group);

 device_remove_file(dev, &dev_attr_reset);
}
