
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i82092aa_pci_driver ;
 int pci_register_driver (int *) ;

__attribute__((used)) static int i82092aa_module_init(void)
{
 return pci_register_driver(&i82092aa_pci_driver);
}
