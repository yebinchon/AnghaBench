
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ide_tape_obj {int disk; } ;
struct ide_atapi_pc {int dummy; } ;
struct TYPE_6__ {struct ide_tape_obj* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int HZ ;
 int ide_queue_pc_tail (TYPE_1__*,int ,struct ide_atapi_pc*,int *,int ) ;
 int idetape_create_write_filemark_cmd (TYPE_1__*,struct ide_atapi_pc*,int ) ;
 int idetape_wait_ready (TYPE_1__*,int) ;

__attribute__((used)) static int idetape_flush_tape_buffers(ide_drive_t *drive)
{
 struct ide_tape_obj *tape = drive->driver_data;
 struct ide_atapi_pc pc;
 int rc;

 idetape_create_write_filemark_cmd(drive, &pc, 0);
 rc = ide_queue_pc_tail(drive, tape->disk, &pc, ((void*)0), 0);
 if (rc)
  return rc;
 idetape_wait_ready(drive, 60 * 5 * HZ);
 return 0;
}
