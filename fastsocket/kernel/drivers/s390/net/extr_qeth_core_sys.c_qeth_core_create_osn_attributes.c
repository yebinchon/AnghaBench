
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int qeth_osn_device_attr_group ;
 int sysfs_create_group (int *,int *) ;

int qeth_core_create_osn_attributes(struct device *dev)
{
 return sysfs_create_group(&dev->kobj, &qeth_osn_device_attr_group);
}
