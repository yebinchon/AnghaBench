
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int qeth_device_ipato_group ;
 int qeth_device_rxip_group ;
 int qeth_device_vipa_group ;
 int qeth_l3_device_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void qeth_l3_remove_device_attributes(struct device *dev)
{
 sysfs_remove_group(&dev->kobj, &qeth_l3_device_attr_group);
 sysfs_remove_group(&dev->kobj, &qeth_device_ipato_group);
 sysfs_remove_group(&dev->kobj, &qeth_device_vipa_group);
 sysfs_remove_group(&dev->kobj, &qeth_device_rxip_group);
}
