
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_dev_reset (struct pci_dev*,int) ;

int pci_probe_reset_function(struct pci_dev *dev)
{
 return pci_dev_reset(dev, 1);
}
