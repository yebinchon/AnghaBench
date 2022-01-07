
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;


 int driver_attr_version ;
 int driver_remove_file (struct device_driver*,int *) ;

__attribute__((used)) static void osst_remove_sysfs_files(struct device_driver *sysfs)
{
 driver_remove_file(sysfs, &driver_attr_version);
}
