
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tsi108_clear_pci_error (int ) ;
 int tsi108_pci_cfg_phys ;

void tsi108_clear_pci_cfg_error(void)
{
 tsi108_clear_pci_error(tsi108_pci_cfg_phys);
}
