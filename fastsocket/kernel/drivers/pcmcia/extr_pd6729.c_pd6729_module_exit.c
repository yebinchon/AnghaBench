
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_unregister_driver (int *) ;
 int pd6729_pci_driver ;

__attribute__((used)) static void pd6729_module_exit(void)
{
 pci_unregister_driver(&pd6729_pci_driver);
}
