
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct acpi_processor {int dummy; } ;


 int EINVAL ;
 int PCI_ANY_ID ;
 int PCI_DEVICE_ID_INTEL_82371AB_3 ;
 int PCI_VENDOR_ID_INTEL ;
 int acpi_processor_errata_piix4 (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_subsys (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int acpi_processor_errata(struct acpi_processor *pr)
{
 int result = 0;
 struct pci_dev *dev = ((void*)0);


 if (!pr)
  return -EINVAL;




 dev = pci_get_subsys(PCI_VENDOR_ID_INTEL,
        PCI_DEVICE_ID_INTEL_82371AB_3, PCI_ANY_ID,
        PCI_ANY_ID, ((void*)0));
 if (dev) {
  result = acpi_processor_errata_piix4(dev);
  pci_dev_put(dev);
 }

 return result;
}
