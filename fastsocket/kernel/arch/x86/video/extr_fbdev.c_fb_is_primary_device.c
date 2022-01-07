
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pci_dev {struct resource* resource; } ;
struct fb_info {struct device* device; } ;
struct device {int dummy; } ;


 int IORESOURCE_ROM_SHADOW ;
 size_t PCI_ROM_RESOURCE ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct pci_dev* vga_default_device () ;

int fb_is_primary_device(struct fb_info *info)
{
 struct device *device = info->device;
 struct pci_dev *pci_dev = ((void*)0);
 struct pci_dev *default_device = vga_default_device();
 struct resource *res = ((void*)0);

 if (device)
  pci_dev = to_pci_dev(device);

 if (!pci_dev)
  return 0;

 if (default_device) {
  if (pci_dev == default_device)
   return 1;
  else
   return 0;
 }

 res = &pci_dev->resource[PCI_ROM_RESOURCE];
 if (res && res->flags & IORESOURCE_ROM_SHADOW)
  return 1;

 return 0;
}
