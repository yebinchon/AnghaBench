
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int pccard_cis_attr ;
 int socket_attrs ;
 int sysfs_create_bin_file (int *,int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

int pccard_sysfs_add_socket(struct device *dev)
{
 int ret = 0;

 ret = sysfs_create_group(&dev->kobj, &socket_attrs);
 if (!ret) {
  ret = sysfs_create_bin_file(&dev->kobj, &pccard_cis_attr);
  if (ret)
   sysfs_remove_group(&dev->kobj, &socket_attrs);
 }
 return ret;
}
