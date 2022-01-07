
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* subordinate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bus_flags; } ;


 int PCI_BUS_FLAGS_NO_MSI ;
 int sprintf (char*,char*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t
msi_bus_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);

 if (!pdev->subordinate)
  return 0;

 return sprintf (buf, "%u\n",
   !(pdev->subordinate->bus_flags & PCI_BUS_FLAGS_NO_MSI));
}
