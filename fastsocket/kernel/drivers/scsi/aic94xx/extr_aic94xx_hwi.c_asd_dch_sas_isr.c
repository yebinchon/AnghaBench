
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_ha_struct {int pcidev; } ;


 int CFIFTOERR ;
 int DCHSTATUS ;
 int asd_arp2_err (struct asd_ha_struct*,int) ;
 int asd_chip_reset (struct asd_ha_struct*) ;
 int asd_printk (char*,int ) ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int pci_name (int ) ;

__attribute__((used)) static void asd_dch_sas_isr(struct asd_ha_struct *asd_ha)
{
 u32 dchstatus = asd_read_reg_dword(asd_ha, DCHSTATUS);

 if (dchstatus & CFIFTOERR) {
  asd_printk("%s: CFIFTOERR\n", pci_name(asd_ha->pcidev));
  asd_chip_reset(asd_ha);
 } else
  asd_arp2_err(asd_ha, dchstatus);
}
