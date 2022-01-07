
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ide_taskfile {int lbam; int lbah; int device; int command; int lbal; int nsect; } ;
struct TYPE_3__ {int cyl; int head; int select; int sect; } ;
typedef TYPE_1__ ide_drive_t ;


 int ATA_CMD_INIT_DEV_PARAMS ;

__attribute__((used)) static void ide_tf_set_specify_cmd(ide_drive_t *drive, struct ide_taskfile *tf)
{
 tf->nsect = drive->sect;
 tf->lbal = drive->sect;
 tf->lbam = drive->cyl;
 tf->lbah = drive->cyl >> 8;
 tf->device = (drive->head - 1) | drive->select;
 tf->command = ATA_CMD_INIT_DEV_PARAMS;
}
