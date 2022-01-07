
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;
struct device {int parent; } ;
typedef int acpi_integer ;
typedef int acpi_handle ;


 int DEVICE_ACPI_HANDLE (int ) ;
 int ENODEV ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int acpi_get_child (int ,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int acpi_pci_find_device(struct device *dev, acpi_handle *handle)
{
 struct pci_dev * pci_dev;
 acpi_integer addr;

 pci_dev = to_pci_dev(dev);

 addr = (PCI_SLOT(pci_dev->devfn) << 16) | PCI_FUNC(pci_dev->devfn);
 *handle = acpi_get_child(DEVICE_ACPI_HANDLE(dev->parent), addr);
 if (!*handle)
  return -ENODEV;
 return 0;
}
