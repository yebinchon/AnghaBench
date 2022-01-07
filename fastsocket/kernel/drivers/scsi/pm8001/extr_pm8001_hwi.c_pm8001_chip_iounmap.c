
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm8001_hba_info {TYPE_1__* io_mem; } ;
typedef int s8 ;
struct TYPE_2__ {scalar_t__ memvirtaddr; } ;


 int iounmap (scalar_t__) ;

void pm8001_chip_iounmap(struct pm8001_hba_info *pm8001_ha)
{
 s8 bar, logical = 0;
 for (bar = 0; bar < 6; bar++) {
  if ((bar == 1) || (bar == 3))
   continue;
  if (pm8001_ha->io_mem[logical].memvirtaddr) {
   iounmap(pm8001_ha->io_mem[logical].memvirtaddr);
   logical++;
  }
 }
}
