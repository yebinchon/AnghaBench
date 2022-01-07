
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ide_atapi_pc {int* c; int flags; } ;
typedef int ide_drive_t ;


 int PC_FLAG_WAIT_FOR_DSC ;
 int POSITION_TO_ELEMENT ;
 int cpu_to_be32 (unsigned int) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int put_unaligned (int ,unsigned int*) ;

__attribute__((used)) static void idetape_create_locate_cmd(ide_drive_t *drive,
  struct ide_atapi_pc *pc,
  unsigned int block, u8 partition, int skip)
{
 ide_init_pc(pc);
 pc->c[0] = POSITION_TO_ELEMENT;
 pc->c[1] = 2;
 put_unaligned(cpu_to_be32(block), (unsigned int *) &pc->c[3]);
 pc->c[8] = partition;
 pc->flags |= PC_FLAG_WAIT_FOR_DSC;
}
