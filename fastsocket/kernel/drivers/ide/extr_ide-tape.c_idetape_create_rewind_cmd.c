
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_atapi_pc {int flags; int * c; } ;
typedef int ide_drive_t ;


 int PC_FLAG_WAIT_FOR_DSC ;
 int REZERO_UNIT ;
 int ide_init_pc (struct ide_atapi_pc*) ;

__attribute__((used)) static void idetape_create_rewind_cmd(ide_drive_t *drive,
  struct ide_atapi_pc *pc)
{
 ide_init_pc(pc);
 pc->c[0] = REZERO_UNIT;
 pc->flags |= PC_FLAG_WAIT_FOR_DSC;
}
