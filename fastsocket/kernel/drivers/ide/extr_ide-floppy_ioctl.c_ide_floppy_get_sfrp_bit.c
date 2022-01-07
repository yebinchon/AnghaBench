
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ide_disk_obj {int disk; } ;
struct ide_atapi_pc {int req_xfer; int flags; } ;
struct TYPE_4__ {int atapi_flags; struct ide_disk_obj* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDEFLOPPY_CAPABILITIES_PAGE ;
 int IDE_AFLAG_SRFP ;
 int PC_FLAG_SUPPRESS_ERROR ;
 int ide_floppy_create_mode_sense_cmd (struct ide_atapi_pc*,int ) ;
 scalar_t__ ide_queue_pc_tail (TYPE_1__*,int ,struct ide_atapi_pc*,int*,int ) ;

__attribute__((used)) static int ide_floppy_get_sfrp_bit(ide_drive_t *drive, struct ide_atapi_pc *pc)
{
 struct ide_disk_obj *floppy = drive->driver_data;
 u8 buf[20];

 drive->atapi_flags &= ~IDE_AFLAG_SRFP;

 ide_floppy_create_mode_sense_cmd(pc, IDEFLOPPY_CAPABILITIES_PAGE);
 pc->flags |= PC_FLAG_SUPPRESS_ERROR;

 if (ide_queue_pc_tail(drive, floppy->disk, pc, buf, pc->req_xfer))
  return 1;

 if (buf[8 + 2] & 0x40)
  drive->atapi_flags |= IDE_AFLAG_SRFP;

 return 0;
}
