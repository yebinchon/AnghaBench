
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int dev; } ;


 int attr_vol_alignment ;
 int attr_vol_corrupted ;
 int attr_vol_data_bytes ;
 int attr_vol_name ;
 int attr_vol_reserved_ebs ;
 int attr_vol_type ;
 int attr_vol_upd_marker ;
 int attr_vol_usable_eb_size ;
 int device_remove_file (int *,int *) ;
 int device_unregister (int *) ;

__attribute__((used)) static void volume_sysfs_close(struct ubi_volume *vol)
{
 device_remove_file(&vol->dev, &attr_vol_upd_marker);
 device_remove_file(&vol->dev, &attr_vol_data_bytes);
 device_remove_file(&vol->dev, &attr_vol_usable_eb_size);
 device_remove_file(&vol->dev, &attr_vol_alignment);
 device_remove_file(&vol->dev, &attr_vol_corrupted);
 device_remove_file(&vol->dev, &attr_vol_name);
 device_remove_file(&vol->dev, &attr_vol_type);
 device_remove_file(&vol->dev, &attr_vol_reserved_ebs);
 device_unregister(&vol->dev);
}
