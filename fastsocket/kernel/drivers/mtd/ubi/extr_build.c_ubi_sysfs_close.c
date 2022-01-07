
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int dev; } ;


 int dev_avail_eraseblocks ;
 int dev_bad_peb_count ;
 int dev_bgt_enabled ;
 int dev_eraseblock_size ;
 int dev_max_ec ;
 int dev_max_vol_count ;
 int dev_min_io_size ;
 int dev_mtd_num ;
 int dev_reserved_for_bad ;
 int dev_total_eraseblocks ;
 int dev_volumes_count ;
 int device_remove_file (int *,int *) ;
 int device_unregister (int *) ;

__attribute__((used)) static void ubi_sysfs_close(struct ubi_device *ubi)
{
 device_remove_file(&ubi->dev, &dev_mtd_num);
 device_remove_file(&ubi->dev, &dev_bgt_enabled);
 device_remove_file(&ubi->dev, &dev_min_io_size);
 device_remove_file(&ubi->dev, &dev_max_vol_count);
 device_remove_file(&ubi->dev, &dev_bad_peb_count);
 device_remove_file(&ubi->dev, &dev_reserved_for_bad);
 device_remove_file(&ubi->dev, &dev_max_ec);
 device_remove_file(&ubi->dev, &dev_volumes_count);
 device_remove_file(&ubi->dev, &dev_total_eraseblocks);
 device_remove_file(&ubi->dev, &dev_avail_eraseblocks);
 device_remove_file(&ubi->dev, &dev_eraseblock_size);
 device_unregister(&ubi->dev);
}
