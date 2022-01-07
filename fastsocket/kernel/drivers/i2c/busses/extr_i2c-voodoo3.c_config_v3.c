
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; TYPE_1__* resource; } ;
struct TYPE_2__ {unsigned long start; } ;


 int ENODEV ;
 unsigned long PCI_BASE_ADDRESS_MEM_MASK ;
 scalar_t__ REG ;
 scalar_t__ REG2 ;
 int dev_info (int *,char*,scalar_t__) ;
 scalar_t__ ioaddr ;
 scalar_t__ ioremap_nocache (unsigned long,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int config_v3(struct pci_dev *dev)
{
 unsigned long cadr;


 cadr = dev->resource[0].start;
 cadr &= PCI_BASE_ADDRESS_MEM_MASK;
 ioaddr = ioremap_nocache(cadr, 0x1000);
 if (ioaddr) {
  writel(0x8160, ioaddr + REG2);
  writel(0xcffc0020, ioaddr + REG);
  dev_info(&dev->dev, "Using Banshee/Voodoo3 I2C device at %p\n", ioaddr);
  return 0;
 }
 return -ENODEV;
}
