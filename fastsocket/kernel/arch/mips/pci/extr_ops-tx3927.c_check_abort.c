
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcistat; int pcistatim; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int iob () ;
 TYPE_1__* tx3927_pcicptr ;

__attribute__((used)) static inline int check_abort(void)
{
 if (tx3927_pcicptr->pcistat & PCI_STATUS_REC_MASTER_ABORT) {
  tx3927_pcicptr->pcistat |= PCI_STATUS_REC_MASTER_ABORT;
  tx3927_pcicptr->pcistatim |= PCI_STATUS_REC_MASTER_ABORT;

  iob();
  return PCIBIOS_DEVICE_NOT_FOUND;
 }
 return PCIBIOS_SUCCESSFUL;
}
