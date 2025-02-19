
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef scalar_t__ u32 ;
struct pci_dn {TYPE_1__* phb; int devfn; int busno; } ;
struct TYPE_2__ {unsigned long buid; } ;


 int BUID_HI (unsigned long) ;
 int BUID_LO (unsigned long) ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int config_access_valid (struct pci_dn*,int) ;
 int ibm_write_pci_config ;
 int rtas_call (int ,int,int,int *,unsigned long,int,int ,...) ;
 unsigned long rtas_config_addr (int ,int ,int) ;
 int write_pci_config ;

int rtas_write_config(struct pci_dn *pdn, int where, int size, u32 val)
{
 unsigned long buid, addr;
 int ret;

 if (!pdn)
  return PCIBIOS_DEVICE_NOT_FOUND;
 if (!config_access_valid(pdn, where))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 addr = rtas_config_addr(pdn->busno, pdn->devfn, where);
 buid = pdn->phb->buid;
 if (buid) {
  ret = rtas_call(ibm_write_pci_config, 5, 1, ((void*)0), addr,
   BUID_HI(buid), BUID_LO(buid), size, (ulong) val);
 } else {
  ret = rtas_call(write_pci_config, 3, 1, ((void*)0), addr, size, (ulong)val);
 }

 if (ret)
  return PCIBIOS_DEVICE_NOT_FOUND;

 return PCIBIOS_SUCCESSFUL;
}
