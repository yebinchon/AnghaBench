
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ide_pci_register_driver (int *) ;
 int scc_pci_driver ;

__attribute__((used)) static int scc_ide_init(void)
{
 return ide_pci_register_driver(&scc_pci_driver);
}
