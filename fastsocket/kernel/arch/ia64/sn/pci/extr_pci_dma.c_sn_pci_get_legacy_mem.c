
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int dummy; } ;
struct TYPE_2__ {int bs_legacy_mem; } ;


 int ENODEV ;
 char* ERR_PTR (int ) ;
 TYPE_1__* SN_PCIBUS_BUSSOFT (struct pci_bus*) ;
 int __IA64_UNCACHED_OFFSET ;

char *sn_pci_get_legacy_mem(struct pci_bus *bus)
{
 if (!SN_PCIBUS_BUSSOFT(bus))
  return ERR_PTR(-ENODEV);

 return (char *)(SN_PCIBUS_BUSSOFT(bus)->bs_legacy_mem | __IA64_UNCACHED_OFFSET);
}
