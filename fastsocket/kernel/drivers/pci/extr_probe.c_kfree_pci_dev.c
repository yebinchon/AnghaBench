
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_dev* rh_reserved1; } ;


 int kfree (struct pci_dev*) ;

void kfree_pci_dev(struct pci_dev *dev)
{
 kfree(dev->rh_reserved1);
 kfree(dev);
}
