
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int pccard_cis_attr ;
 int socket_attrs ;
 int sysfs_remove_bin_file (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

void pccard_sysfs_remove_socket(struct device *dev)
{
 sysfs_remove_bin_file(&dev->kobj, &pccard_cis_attr);
 sysfs_remove_group(&dev->kobj, &socket_attrs);
}
