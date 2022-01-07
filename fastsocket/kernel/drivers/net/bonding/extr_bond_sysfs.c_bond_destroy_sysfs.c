
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_attr_bonding_masters ;
 int netdev_class_remove_file (int *) ;

void bond_destroy_sysfs(void)
{
 netdev_class_remove_file(&class_attr_bonding_masters);
}
