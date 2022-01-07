
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __ht_create_irq (struct pci_dev*,int,int *) ;

int ht_create_irq(struct pci_dev *dev, int idx)
{
 return __ht_create_irq(dev, idx, ((void*)0));
}
