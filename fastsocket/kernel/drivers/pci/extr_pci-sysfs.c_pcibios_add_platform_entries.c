
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;



int __attribute__ ((weak)) pcibios_add_platform_entries(struct pci_dev *dev)
{
 return 0;
}
