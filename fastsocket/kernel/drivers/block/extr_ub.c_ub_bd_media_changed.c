
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_lun {int changed; int udev; int removable; } ;
struct gendisk {struct ub_lun* private_data; } ;


 scalar_t__ ub_sync_tur (int ,struct ub_lun*) ;

__attribute__((used)) static int ub_bd_media_changed(struct gendisk *disk)
{
 struct ub_lun *lun = disk->private_data;

 if (!lun->removable)
  return 0;
 if (ub_sync_tur(lun->udev, lun) != 0) {
  lun->changed = 1;
  return 1;
 }

 return lun->changed;
}
