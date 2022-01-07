
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
 int driver_remove_file (int *,int *) ;
 int sdebug_driverfs_driver ;

__attribute__((used)) static void do_remove_driverfs_files(void)
{
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_map);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_ato);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_guard);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_dif);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_dix);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_sector_size);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_vpd_use_hostno);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_virtual_gb);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_scsi_level);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_opts);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_ptype);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_num_tgts);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_num_parts);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_no_uld);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_no_lun_0);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_max_queue);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_max_luns);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_fake_rw);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_every_nth);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_dsense);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_dev_size_mb);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_delay);
 driver_remove_file(&sdebug_driverfs_driver, &driver_attr_add_host);
}
