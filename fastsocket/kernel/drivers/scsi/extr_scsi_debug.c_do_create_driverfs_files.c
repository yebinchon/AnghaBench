
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int driver_attr_add_host ;
 int driver_attr_ato ;
 int driver_attr_delay ;
 int driver_attr_dev_size_mb ;
 int driver_attr_dif ;
 int driver_attr_dix ;
 int driver_attr_dsense ;
 int driver_attr_every_nth ;
 int driver_attr_fake_rw ;
 int driver_attr_guard ;
 int driver_attr_map ;
 int driver_attr_max_luns ;
 int driver_attr_max_queue ;
 int driver_attr_no_lun_0 ;
 int driver_attr_no_uld ;
 int driver_attr_num_parts ;
 int driver_attr_num_tgts ;
 int driver_attr_opts ;
 int driver_attr_ptype ;
 int driver_attr_scsi_level ;
 int driver_attr_sector_size ;
 int driver_attr_virtual_gb ;
 int driver_attr_vpd_use_hostno ;
 int driver_create_file (int *,int *) ;
 int sdebug_driverfs_driver ;

__attribute__((used)) static int do_create_driverfs_files(void)
{
 int ret;

 ret = driver_create_file(&sdebug_driverfs_driver, &driver_attr_add_host);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_delay);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_dev_size_mb);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_dsense);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_every_nth);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_fake_rw);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_max_luns);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_max_queue);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_no_lun_0);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_no_uld);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_num_parts);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_num_tgts);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_ptype);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_opts);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_scsi_level);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_virtual_gb);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_vpd_use_hostno);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_sector_size);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_dix);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_dif);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_guard);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_ato);
 ret |= driver_create_file(&sdebug_driverfs_driver, &driver_attr_map);
 return ret;
}
