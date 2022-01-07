
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ class; } ;
typedef int acpi_handle ;


 scalar_t__ PCI_CLASS_SYSTEM_PIC_IOAPIC ;
 scalar_t__ PCI_CLASS_SYSTEM_PIC_IOXAPIC ;
 struct pci_dev* acpi_get_pci_dev (int ) ;
 int pci_dev_put (struct pci_dev*) ;

__attribute__((used)) static struct pci_dev * get_apic_pci_info(acpi_handle handle)
{
 struct pci_dev *dev;

 dev = acpi_get_pci_dev(handle);
 if (!dev)
  return ((void*)0);

 if ((dev->class != PCI_CLASS_SYSTEM_PIC_IOAPIC) &&
     (dev->class != PCI_CLASS_SYSTEM_PIC_IOXAPIC))
 {
  pci_dev_put(dev);
  return ((void*)0);
 }

 return dev;
}
