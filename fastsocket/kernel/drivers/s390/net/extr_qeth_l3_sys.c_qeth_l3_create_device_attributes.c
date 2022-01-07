
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int qeth_device_ipato_group ;
 int qeth_device_rxip_group ;
 int qeth_device_vipa_group ;
 int qeth_l3_device_attr_group ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

int qeth_l3_create_device_attributes(struct device *dev)
{
 int ret;

 ret = sysfs_create_group(&dev->kobj, &qeth_l3_device_attr_group);
 if (ret)
  return ret;

 ret = sysfs_create_group(&dev->kobj, &qeth_device_ipato_group);
 if (ret) {
  sysfs_remove_group(&dev->kobj, &qeth_l3_device_attr_group);
  return ret;
 }

 ret = sysfs_create_group(&dev->kobj, &qeth_device_vipa_group);
 if (ret) {
  sysfs_remove_group(&dev->kobj, &qeth_l3_device_attr_group);
  sysfs_remove_group(&dev->kobj, &qeth_device_ipato_group);
  return ret;
 }

 ret = sysfs_create_group(&dev->kobj, &qeth_device_rxip_group);
 if (ret) {
  sysfs_remove_group(&dev->kobj, &qeth_l3_device_attr_group);
  sysfs_remove_group(&dev->kobj, &qeth_device_ipato_group);
  sysfs_remove_group(&dev->kobj, &qeth_device_vipa_group);
  return ret;
 }
 return 0;
}
