
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PCIIO_ASIC_TYPE_TIOCE ;
 int ** sn_pci_provider ;
 int tioce_pci_interfaces ;

int
tioce_init_provider(void)
{
 sn_pci_provider[PCIIO_ASIC_TYPE_TIOCE] = &tioce_pci_interfaces;
 return 0;
}
