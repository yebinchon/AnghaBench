
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ide_atapi_pc {int* c; } ;
struct gendisk {int dummy; } ;
struct TYPE_4__ {int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int ALLOW_MEDIUM_REMOVAL ;
 int IDE_DFLAG_DOORLOCKING ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int ide_queue_pc_tail (TYPE_1__*,struct gendisk*,struct ide_atapi_pc*,int *,int ) ;

int ide_set_media_lock(ide_drive_t *drive, struct gendisk *disk, int on)
{
 struct ide_atapi_pc pc;

 if ((drive->dev_flags & IDE_DFLAG_DOORLOCKING) == 0)
  return 0;

 ide_init_pc(&pc);
 pc.c[0] = ALLOW_MEDIUM_REMOVAL;
 pc.c[4] = on;

 return ide_queue_pc_tail(drive, disk, &pc, ((void*)0), 0);
}
