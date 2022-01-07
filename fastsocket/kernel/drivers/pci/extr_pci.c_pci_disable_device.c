
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {scalar_t__ enabled; } ;
struct pci_dev {scalar_t__ is_busmaster; int enable_cnt; } ;


 scalar_t__ atomic_sub_return (int,int *) ;
 int do_pci_disable_device (struct pci_dev*) ;
 struct pci_devres* find_pci_dr (struct pci_dev*) ;

void
pci_disable_device(struct pci_dev *dev)
{
 struct pci_devres *dr;

 dr = find_pci_dr(dev);
 if (dr)
  dr->enabled = 0;

 if (atomic_sub_return(1, &dev->enable_cnt) != 0)
  return;

 do_pci_disable_device(dev);

 dev->is_busmaster = 0;
}
