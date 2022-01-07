
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {unsigned long pci_first_busno; unsigned long pci_last_busno; } ;



__attribute__((used)) static int config_out_of_range(struct pci_pbm_info *pbm,
          unsigned long bus,
          unsigned long devfn,
          unsigned long reg)
{
 if (bus < pbm->pci_first_busno ||
     bus > pbm->pci_last_busno)
  return 1;
 return 0;
}
