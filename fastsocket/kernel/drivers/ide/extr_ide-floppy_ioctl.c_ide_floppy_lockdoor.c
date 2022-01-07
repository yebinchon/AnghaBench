
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ide_disk_obj {int openers; struct gendisk* disk; } ;
struct ide_atapi_pc {int dummy; } ;
struct gendisk {int dummy; } ;
struct TYPE_5__ {struct ide_disk_obj* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 unsigned int CDROMEJECT ;
 int EBUSY ;
 int ide_do_start_stop (TYPE_1__*,struct gendisk*,int) ;
 int ide_set_media_lock (TYPE_1__*,struct gendisk*,int) ;

__attribute__((used)) static int ide_floppy_lockdoor(ide_drive_t *drive, struct ide_atapi_pc *pc,
          unsigned long arg, unsigned int cmd)
{
 struct ide_disk_obj *floppy = drive->driver_data;
 struct gendisk *disk = floppy->disk;
 int prevent = (arg && cmd != CDROMEJECT) ? 1 : 0;

 if (floppy->openers > 1)
  return -EBUSY;

 ide_set_media_lock(drive, disk, prevent);

 if (cmd == CDROMEJECT)
  ide_do_start_stop(drive, disk, 2);

 return 0;
}
