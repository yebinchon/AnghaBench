
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int put_device (int *) ;

void pci_dev_put(struct pci_dev *dev)
{
 if (dev)
  put_device(&dev->dev);
}
