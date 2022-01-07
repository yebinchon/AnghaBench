
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_register_driver (int *) ;
 int pd6729_pci_driver ;

__attribute__((used)) static int pd6729_module_init(void)
{
 return pci_register_driver(&pd6729_pci_driver);
}
