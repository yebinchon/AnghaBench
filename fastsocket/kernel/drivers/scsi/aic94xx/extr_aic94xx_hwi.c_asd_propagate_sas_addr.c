
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sas_addr; TYPE_2__* phy_desc; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
struct TYPE_4__ {scalar_t__* sas_addr; } ;


 int ASD_DPRINTK (char*,int,int ) ;
 int ASD_MAX_PHYS ;
 int SAS_ADDR (int ) ;
 int SAS_ADDR_SIZE ;
 int memcpy (scalar_t__*,int ,int ) ;

__attribute__((used)) static void asd_propagate_sas_addr(struct asd_ha_struct *asd_ha)
{
 int i;

 for (i = 0; i < ASD_MAX_PHYS; i++) {
  if (asd_ha->hw_prof.phy_desc[i].sas_addr[0] == 0)
   continue;


  ASD_DPRINTK("setting phy%d addr to %llx\n", i,
       SAS_ADDR(asd_ha->hw_prof.sas_addr));
  memcpy(asd_ha->hw_prof.phy_desc[i].sas_addr,
         asd_ha->hw_prof.sas_addr, SAS_ADDR_SIZE);
 }
}
