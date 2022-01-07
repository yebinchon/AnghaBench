
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ide_disk_obj {int openers; TYPE_2__* drive; } ;
struct gendisk {int dummy; } ;
struct block_device {struct gendisk* bd_disk; } ;
struct TYPE_6__ {int dev_flags; TYPE_1__* disk_ops; } ;
typedef TYPE_2__ ide_drive_t ;
typedef int fmode_t ;
struct TYPE_5__ {int (* init_media ) (TYPE_2__*,struct gendisk*) ;int (* set_doorlock ) (TYPE_2__*,struct gendisk*,int) ;} ;


 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int EROFS ;
 int FMODE_NDELAY ;
 int FMODE_WRITE ;
 int IDE_DBG_FUNC ;
 int IDE_DFLAG_FORMAT_IN_PROGRESS ;
 int IDE_DFLAG_MEDIA_CHANGED ;
 int IDE_DFLAG_REMOVABLE ;
 int IDE_DFLAG_WP ;
 int check_disk_change (struct block_device*) ;
 int ide_debug_log (int ,char*) ;
 struct ide_disk_obj* ide_disk_get (struct gendisk*) ;
 int ide_disk_put (struct ide_disk_obj*) ;
 int stub1 (TYPE_2__*,struct gendisk*) ;
 int stub2 (TYPE_2__*,struct gendisk*,int) ;

__attribute__((used)) static int ide_gd_open(struct block_device *bdev, fmode_t mode)
{
 struct gendisk *disk = bdev->bd_disk;
 struct ide_disk_obj *idkp;
 ide_drive_t *drive;
 int ret = 0;

 idkp = ide_disk_get(disk);
 if (idkp == ((void*)0))
  return -ENXIO;

 drive = idkp->drive;

 ide_debug_log(IDE_DBG_FUNC, "enter");

 idkp->openers++;

 if ((drive->dev_flags & IDE_DFLAG_REMOVABLE) && idkp->openers == 1) {
  drive->dev_flags &= ~IDE_DFLAG_FORMAT_IN_PROGRESS;


  ret = drive->disk_ops->init_media(drive, disk);






  if (ret && (mode & FMODE_NDELAY) == 0) {
   ret = -EIO;
   goto out_put_idkp;
  }

  if ((drive->dev_flags & IDE_DFLAG_WP) && (mode & FMODE_WRITE)) {
   ret = -EROFS;
   goto out_put_idkp;
  }






  drive->disk_ops->set_doorlock(drive, disk, 1);
  drive->dev_flags |= IDE_DFLAG_MEDIA_CHANGED;
  check_disk_change(bdev);
 } else if (drive->dev_flags & IDE_DFLAG_FORMAT_IN_PROGRESS) {
  ret = -EBUSY;
  goto out_put_idkp;
 }
 return 0;

out_put_idkp:
 idkp->openers--;
 ide_disk_put(idkp);
 return ret;
}
