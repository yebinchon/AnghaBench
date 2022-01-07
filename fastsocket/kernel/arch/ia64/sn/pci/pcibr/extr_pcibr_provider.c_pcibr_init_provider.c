
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PCIIO_ASIC_TYPE_PIC ;
 size_t PCIIO_ASIC_TYPE_TIOCP ;
 int pcibr_provider ;
 int ** sn_pci_provider ;

int
pcibr_init_provider(void)
{
 sn_pci_provider[PCIIO_ASIC_TYPE_PIC] = &pcibr_provider;
 sn_pci_provider[PCIIO_ASIC_TYPE_TIOCP] = &pcibr_provider;

 return 0;
}
