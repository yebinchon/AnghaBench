
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
 int driver_create_file (struct device_driver*,int *) ;
 int driver_remove_file (struct device_driver*,int *) ;
 TYPE_1__ st_template ;

__attribute__((used)) static int do_create_sysfs_files(void)
{
 struct device_driver *sysfs = &st_template.gendrv;
 int err;

 err = driver_create_file(sysfs, &driver_attr_try_direct_io);
 if (err)
  return err;
 err = driver_create_file(sysfs, &driver_attr_fixed_buffer_size);
 if (err)
  goto err_try_direct_io;
 err = driver_create_file(sysfs, &driver_attr_max_sg_segs);
 if (err)
  goto err_attr_fixed_buf;
 err = driver_create_file(sysfs, &driver_attr_version);
 if (err)
  goto err_attr_max_sg;

 return 0;

err_attr_max_sg:
 driver_remove_file(sysfs, &driver_attr_max_sg_segs);
err_attr_fixed_buf:
 driver_remove_file(sysfs, &driver_attr_fixed_buffer_size);
err_try_direct_io:
 driver_remove_file(sysfs, &driver_attr_try_direct_io);
 return err;
}
