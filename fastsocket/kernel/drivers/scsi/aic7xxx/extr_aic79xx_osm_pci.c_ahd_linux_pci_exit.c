
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aic79xx_pci_driver ;
 int pci_unregister_driver (int *) ;

void
ahd_linux_pci_exit(void)
{
 pci_unregister_driver(&aic79xx_pci_driver);
}
