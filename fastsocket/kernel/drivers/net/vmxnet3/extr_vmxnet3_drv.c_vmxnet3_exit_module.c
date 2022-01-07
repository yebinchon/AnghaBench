
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_unregister_driver (int *) ;
 int vmxnet3_driver ;

__attribute__((used)) static void
vmxnet3_exit_module(void)
{
 pci_unregister_driver(&vmxnet3_driver);
}
