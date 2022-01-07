
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ide_disk_obj {int openers; TYPE_2__* drive; } ;
struct gendisk {int dummy; } ;
struct TYPE_6__ {int dev_flags; TYPE_1__* disk_ops; } ;
typedef TYPE_2__ ide_drive_t ;
typedef int fmode_t ;
struct TYPE_5__ {int (* set_doorlock ) (TYPE_2__*,struct gendisk*,int ) ;int (* flush ) (TYPE_2__*) ;} ;


 int IDE_DBG_FUNC ;
 int IDE_DFLAG_FORMAT_IN_PROGRESS ;
 int IDE_DFLAG_REMOVABLE ;
 int ide_debug_log (int ,char*) ;
 int ide_disk_obj ;
 int ide_disk_put (struct ide_disk_obj*) ;
 struct ide_disk_obj* ide_drv_g (struct gendisk*,int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,struct gendisk*,int ) ;

__attribute__((used)) static int ide_gd_release(struct gendisk *disk, fmode_t mode)
{
 struct ide_disk_obj *idkp = ide_drv_g(disk, ide_disk_obj);
 ide_drive_t *drive = idkp->drive;

 ide_debug_log(IDE_DBG_FUNC, "enter");

 if (idkp->openers == 1)
  drive->disk_ops->flush(drive);

 if ((drive->dev_flags & IDE_DFLAG_REMOVABLE) && idkp->openers == 1) {
  drive->disk_ops->set_doorlock(drive, disk, 0);
  drive->dev_flags &= ~IDE_DFLAG_FORMAT_IN_PROGRESS;
 }

 idkp->openers--;

 ide_disk_put(idkp);

 return 0;
}
