
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ips_pci_driver ;
 int pci_unregister_driver (int *) ;

__attribute__((used)) static void ips_exit(void)
{
 pci_unregister_driver(&ips_pci_driver);
 return;
}
