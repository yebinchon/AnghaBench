
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_atapi_pc {int dummy; } ;


 int memset (struct ide_atapi_pc*,int ,int) ;

void ide_init_pc(struct ide_atapi_pc *pc)
{
 memset(pc, 0, sizeof(*pc));
}
