
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int flags; } ;


 int IORESOURCE_ROM_SHADOW ;
 size_t PCI_ROM_RESOURCE ;
 int sprintf (char*,char*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct pci_dev* vga_default_device () ;

__attribute__((used)) static ssize_t
boot_vga_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct pci_dev *vga_dev = vga_default_device();

 if (vga_dev)
  return sprintf(buf, "%u\n", (pdev == vga_dev));

 return sprintf(buf, "%u\n",
  !!(pdev->resource[PCI_ROM_RESOURCE].flags &
     IORESOURCE_ROM_SHADOW));
}
