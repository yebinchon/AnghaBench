
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int dev; } ;
struct ubi_device {int dummy; } ;


 int attr_vol_alignment ;
 int attr_vol_corrupted ;
 int attr_vol_data_bytes ;
 int attr_vol_name ;
 int attr_vol_reserved_ebs ;
 int attr_vol_type ;
 int attr_vol_upd_marker ;
 int attr_vol_usable_eb_size ;
 int device_create_file (int *,int *) ;

__attribute__((used)) static int volume_sysfs_init(struct ubi_device *ubi, struct ubi_volume *vol)
{
 int err;

 err = device_create_file(&vol->dev, &attr_vol_reserved_ebs);
 if (err)
  return err;
 err = device_create_file(&vol->dev, &attr_vol_type);
 if (err)
  return err;
 err = device_create_file(&vol->dev, &attr_vol_name);
 if (err)
  return err;
 err = device_create_file(&vol->dev, &attr_vol_corrupted);
 if (err)
  return err;
 err = device_create_file(&vol->dev, &attr_vol_alignment);
 if (err)
  return err;
 err = device_create_file(&vol->dev, &attr_vol_usable_eb_size);
 if (err)
  return err;
 err = device_create_file(&vol->dev, &attr_vol_data_bytes);
 if (err)
  return err;
 err = device_create_file(&vol->dev, &attr_vol_upd_marker);
 return err;
}
