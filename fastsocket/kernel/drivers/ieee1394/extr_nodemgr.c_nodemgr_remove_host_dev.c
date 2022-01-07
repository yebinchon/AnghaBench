
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int device_for_each_child (struct device*,int *,int ) ;
 int remove_host_dev ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void nodemgr_remove_host_dev(struct device *dev)
{
 device_for_each_child(dev, ((void*)0), remove_host_dev);
 sysfs_remove_link(&dev->kobj, "irm_id");
 sysfs_remove_link(&dev->kobj, "busmgr_id");
 sysfs_remove_link(&dev->kobj, "host_id");
}
