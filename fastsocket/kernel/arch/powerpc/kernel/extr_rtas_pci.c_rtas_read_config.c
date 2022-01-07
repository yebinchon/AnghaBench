
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dn {int node; TYPE_1__* phb; int devfn; int busno; } ;
struct TYPE_2__ {unsigned long buid; } ;


 int BUID_HI (unsigned long) ;
 int BUID_LO (unsigned long) ;
 int EEH_IO_ERROR_VALUE (int) ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int config_access_valid (struct pci_dn*,int) ;
 scalar_t__ eeh_dn_check_failure (int ,int *) ;
 int ibm_read_pci_config ;
 int read_pci_config ;
 int rtas_call (int ,int,int,int*,unsigned long,int,...) ;
 unsigned long rtas_config_addr (int ,int ,int) ;

int rtas_read_config(struct pci_dn *pdn, int where, int size, u32 *val)
{
 int returnval = -1;
 unsigned long buid, addr;
 int ret;

 if (!pdn)
  return PCIBIOS_DEVICE_NOT_FOUND;
 if (!config_access_valid(pdn, where))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 addr = rtas_config_addr(pdn->busno, pdn->devfn, where);
 buid = pdn->phb->buid;
 if (buid) {
  ret = rtas_call(ibm_read_pci_config, 4, 2, &returnval,
    addr, BUID_HI(buid), BUID_LO(buid), size);
 } else {
  ret = rtas_call(read_pci_config, 2, 2, &returnval, addr, size);
 }
 *val = returnval;

 if (ret)
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (returnval == EEH_IO_ERROR_VALUE(size) &&
     eeh_dn_check_failure (pdn->node, ((void*)0)))
  return PCIBIOS_DEVICE_NOT_FOUND;

 return PCIBIOS_SUCCESSFUL;
}
