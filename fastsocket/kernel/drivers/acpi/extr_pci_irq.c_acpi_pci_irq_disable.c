
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; int pin; } ;
struct acpi_prt_entry {int index; scalar_t__ link; } ;


 struct acpi_prt_entry* acpi_pci_irq_lookup (struct pci_dev*,int ) ;
 int acpi_pci_link_free_irq (scalar_t__) ;
 int acpi_unregister_gsi (int) ;
 int dev_info (int *,char*,int ) ;
 int pin_name (int ) ;

void acpi_pci_irq_disable(struct pci_dev *dev)
{
 struct acpi_prt_entry *entry;
 int gsi;
 u8 pin;

 pin = dev->pin;
 if (!pin)
  return;

 entry = acpi_pci_irq_lookup(dev, pin);
 if (!entry)
  return;

 if (entry->link)
  gsi = acpi_pci_link_free_irq(entry->link);
 else
  gsi = entry->index;






 dev_info(&dev->dev, "PCI INT %c disabled\n", pin_name(pin));
 acpi_unregister_gsi(gsi);
}
