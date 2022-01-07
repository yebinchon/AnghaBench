
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {size_t vol_id; int cdev; } ;
struct ubi_device {int ** volumes; } ;


 int cdev_del (int *) ;
 int dbg_gen (char*,size_t) ;
 int volume_sysfs_close (struct ubi_volume*) ;

void ubi_free_volume(struct ubi_device *ubi, struct ubi_volume *vol)
{
 dbg_gen("free volume %d", vol->vol_id);

 ubi->volumes[vol->vol_id] = ((void*)0);
 cdev_del(&vol->cdev);
 volume_sysfs_close(vol);
}
