
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct TYPE_2__ {struct device_driver gendrv; } ;


 int driver_attr_fixed_buffer_size ;
 int driver_attr_max_sg_segs ;
 int driver_attr_try_direct_io ;
 int driver_attr_version ;
 int driver_remove_file (struct device_driver*,int *) ;
 TYPE_1__ st_template ;

__attribute__((used)) static void do_remove_sysfs_files(void)
{
 struct device_driver *sysfs = &st_template.gendrv;

 driver_remove_file(sysfs, &driver_attr_version);
 driver_remove_file(sysfs, &driver_attr_max_sg_segs);
 driver_remove_file(sysfs, &driver_attr_fixed_buffer_size);
 driver_remove_file(sysfs, &driver_attr_try_direct_io);
}
