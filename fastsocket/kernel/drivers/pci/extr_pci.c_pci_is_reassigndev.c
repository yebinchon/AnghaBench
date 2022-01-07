
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ pci_specified_resource_alignment (struct pci_dev*) ;

int pci_is_reassigndev(struct pci_dev *dev)
{
 return (pci_specified_resource_alignment(dev) != 0);
}
