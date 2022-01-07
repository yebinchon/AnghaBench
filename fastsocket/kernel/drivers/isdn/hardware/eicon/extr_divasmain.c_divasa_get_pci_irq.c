
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {unsigned char irq; } ;



unsigned long divasa_get_pci_irq(unsigned char bus, unsigned char func,
     void *pci_dev_handle)
{
 unsigned char irq = 0;
 struct pci_dev *dev = (struct pci_dev *) pci_dev_handle;

 irq = dev->irq;

 return ((unsigned long) irq);
}
