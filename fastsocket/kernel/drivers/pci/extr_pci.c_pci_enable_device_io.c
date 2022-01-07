
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int IORESOURCE_IO ;
 int __pci_enable_device_flags (struct pci_dev*,int ) ;

int pci_enable_device_io(struct pci_dev *dev)
{
 return __pci_enable_device_flags(dev, IORESOURCE_IO);
}
