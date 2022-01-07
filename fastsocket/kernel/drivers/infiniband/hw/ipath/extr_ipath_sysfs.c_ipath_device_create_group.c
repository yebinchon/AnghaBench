
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
 int dev_counter_attr_group ;
 int dev_ibcfg_attr_group ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

int ipath_device_create_group(struct device *dev, struct ipath_devdata *dd)
{
 int ret;

 ret = sysfs_create_group(&dev->kobj, &dev_attr_group);
 if (ret)
  goto bail;

 ret = sysfs_create_group(&dev->kobj, &dev_counter_attr_group);
 if (ret)
  goto bail_attrs;

 if (dd->ipath_flags & IPATH_HAS_MULT_IB_SPEED) {
  ret = device_create_file(dev, &dev_attr_jint_idle_ticks);
  if (ret)
   goto bail_counter;
  ret = device_create_file(dev, &dev_attr_jint_max_packets);
  if (ret)
   goto bail_idle;

  ret = sysfs_create_group(&dev->kobj, &dev_ibcfg_attr_group);
  if (ret)
   goto bail_max;
 }

 return 0;

bail_max:
 device_remove_file(dev, &dev_attr_jint_max_packets);
bail_idle:
 device_remove_file(dev, &dev_attr_jint_idle_ticks);
bail_counter:
 sysfs_remove_group(&dev->kobj, &dev_counter_attr_group);
bail_attrs:
 sysfs_remove_group(&dev->kobj, &dev_attr_group);
bail:
 return ret;
}
