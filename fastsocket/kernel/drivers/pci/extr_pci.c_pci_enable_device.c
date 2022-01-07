
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int __pci_enable_device_flags (struct pci_dev*,int) ;

int pci_enable_device(struct pci_dev *dev)
{
 return __pci_enable_device_flags(dev, IORESOURCE_MEM | IORESOURCE_IO);
}
