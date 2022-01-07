
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {struct pci_bus* bus; struct pci_bus* subordinate; int devfn; } ;
struct pci_bus {int number; } ;
struct TYPE_2__ {int (* bind ) (struct acpi_device*) ;int unbind; } ;
struct acpi_device {int handle; TYPE_1__ ops; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int METHOD_NAME__PRT ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int acpi_get_handle (int ,int ,int *) ;
 struct pci_dev* acpi_get_pci_dev (int ) ;
 int acpi_pci_irq_add_prt (int ,struct pci_bus*) ;
 int acpi_pci_unbind ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (struct pci_bus*) ;

__attribute__((used)) static int acpi_pci_bind(struct acpi_device *device)
{
 acpi_status status;
 acpi_handle handle;
 struct pci_bus *bus;
 struct pci_dev *dev;

 dev = acpi_get_pci_dev(device->handle);
 if (!dev)
  return 0;





 if (dev->subordinate) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Device %04x:%02x:%02x.%d is a PCI bridge\n",
      pci_domain_nr(dev->bus), dev->bus->number,
      PCI_SLOT(dev->devfn), PCI_FUNC(dev->devfn)));
  device->ops.bind = acpi_pci_bind;
  device->ops.unbind = acpi_pci_unbind;
 }
 status = acpi_get_handle(device->handle, METHOD_NAME__PRT, &handle);
 if (ACPI_FAILURE(status))
  goto out;

 if (dev->subordinate)
  bus = dev->subordinate;
 else
  bus = dev->bus;

 acpi_pci_irq_add_prt(device->handle, bus);

out:
 pci_dev_put(dev);
 return 0;
}
