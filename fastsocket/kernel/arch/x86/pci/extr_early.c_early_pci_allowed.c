
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_PROBE_CONF1 ;
 int PCI_PROBE_NOEARLY ;
 int pci_probe ;

int early_pci_allowed(void)
{
 return (pci_probe & (PCI_PROBE_CONF1|PCI_PROBE_NOEARLY)) ==
   PCI_PROBE_CONF1;
}
