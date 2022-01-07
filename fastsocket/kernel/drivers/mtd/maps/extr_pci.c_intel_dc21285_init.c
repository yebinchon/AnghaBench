
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int bankwidth; unsigned long size; int write; int read; } ;
struct map_pci_info {int base; TYPE_1__ map; } ;


 int ENOMEM ;
 int ENXIO ;
 int PCI_ROM_RESOURCE ;
 int ioremap_nocache (unsigned long,unsigned long) ;
 int mtd_pci_read32 ;
 int mtd_pci_write32 ;
 int pci_enable_rom (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 int printk (char*,int ) ;

__attribute__((used)) static int
intel_dc21285_init(struct pci_dev *dev, struct map_pci_info *map)
{
 unsigned long base, len;

 base = pci_resource_start(dev, PCI_ROM_RESOURCE);
 len = pci_resource_len(dev, PCI_ROM_RESOURCE);

 if (!len || !base) {



  base = pci_resource_start(dev, 2);
  len = pci_resource_len(dev, 2);





 } else {





  pci_enable_rom(dev);
  printk("%s: enabling expansion ROM\n", pci_name(dev));
 }

 if (!len || !base)
  return -ENXIO;

 map->map.bankwidth = 4;
 map->map.read = mtd_pci_read32,
 map->map.write = mtd_pci_write32,
 map->map.size = len;
 map->base = ioremap_nocache(base, len);

 if (!map->base)
  return -ENOMEM;

 return 0;
}
