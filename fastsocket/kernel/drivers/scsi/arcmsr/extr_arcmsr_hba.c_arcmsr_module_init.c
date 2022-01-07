
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arcmsr_pci_driver ;
 int pci_register_driver (int *) ;

__attribute__((used)) static int arcmsr_module_init(void)
{
 int error = 0;
 error = pci_register_driver(&arcmsr_pci_driver);
 return error;
}
