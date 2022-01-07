
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int (* notify_ha_event ) (struct sas_ha_struct*,int ) ;} ;
struct asd_ha_struct {int pcidev; struct sas_ha_struct sas_ha; } ;


 int ASD_DPRINTK (char*,int ) ;
 int HAE_RESET ;
 int asd_chip_hardrst (struct asd_ha_struct*) ;
 int pci_name (int ) ;
 int stub1 (struct sas_ha_struct*,int ) ;

__attribute__((used)) static void asd_chip_reset(struct asd_ha_struct *asd_ha)
{
 struct sas_ha_struct *sas_ha = &asd_ha->sas_ha;

 ASD_DPRINTK("chip reset for %s\n", pci_name(asd_ha->pcidev));
 asd_chip_hardrst(asd_ha);
 sas_ha->notify_ha_event(sas_ha, HAE_RESET);
}
