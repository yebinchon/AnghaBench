
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int qeth_osn_device_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void qeth_core_remove_osn_attributes(struct device *dev)
{
 sysfs_remove_group(&dev->kobj, &qeth_osn_device_attr_group);
 return;
}
