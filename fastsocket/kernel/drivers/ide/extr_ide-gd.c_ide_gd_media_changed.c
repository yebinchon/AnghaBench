
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ide_disk_obj {TYPE_1__* drive; } ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_DFLAG_ATTACH ;
 int IDE_DFLAG_MEDIA_CHANGED ;
 int ide_disk_obj ;
 struct ide_disk_obj* ide_drv_g (struct gendisk*,int ) ;

__attribute__((used)) static int ide_gd_media_changed(struct gendisk *disk)
{
 struct ide_disk_obj *idkp = ide_drv_g(disk, ide_disk_obj);
 ide_drive_t *drive = idkp->drive;
 int ret;


 if (drive->dev_flags & IDE_DFLAG_ATTACH) {
  drive->dev_flags &= ~IDE_DFLAG_ATTACH;
  return 0;
 }

 ret = !!(drive->dev_flags & IDE_DFLAG_MEDIA_CHANGED);
 drive->dev_flags &= ~IDE_DFLAG_MEDIA_CHANGED;

 return ret;
}
