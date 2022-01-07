
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_atapi_pc {int* c; int req_xfer; } ;


 int INQUIRY ;
 int ide_init_pc (struct ide_atapi_pc*) ;

__attribute__((used)) static void idetape_create_inquiry_cmd(struct ide_atapi_pc *pc)
{
 ide_init_pc(pc);
 pc->c[0] = INQUIRY;
 pc->c[4] = 254;
 pc->req_xfer = 254;
}
