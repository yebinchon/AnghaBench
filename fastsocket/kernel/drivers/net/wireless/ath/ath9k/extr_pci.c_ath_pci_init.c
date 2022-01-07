
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath_pci_driver ;
 int pci_register_driver (int *) ;

int ath_pci_init(void)
{
 return pci_register_driver(&ath_pci_driver);
}
