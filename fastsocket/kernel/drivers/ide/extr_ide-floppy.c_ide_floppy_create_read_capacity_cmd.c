
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_atapi_pc {int* c; int req_xfer; } ;


 int GPCMD_READ_FORMAT_CAPACITIES ;
 int ide_init_pc (struct ide_atapi_pc*) ;

void ide_floppy_create_read_capacity_cmd(struct ide_atapi_pc *pc)
{
 ide_init_pc(pc);
 pc->c[0] = GPCMD_READ_FORMAT_CAPACITIES;
 pc->c[7] = 255;
 pc->c[8] = 255;
 pc->req_xfer = 255;
}
