
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int class; int pin; int dev; TYPE_1__* bus; } ;
struct acpi_prt_entry {int dummy; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int PCI_CLASS_BRIDGE_CARDBUS ;
 struct acpi_prt_entry* acpi_pci_irq_find_prt_entry (struct pci_dev*,int) ;
 int dev_warn (int *,char*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_swizzle_interrupt_pin (struct pci_dev*,int) ;
 int pin_name (int) ;

__attribute__((used)) static struct acpi_prt_entry *acpi_pci_irq_lookup(struct pci_dev *dev, int pin)
{
 struct acpi_prt_entry *entry;
 struct pci_dev *bridge;
 u8 bridge_pin, orig_pin = pin;

 entry = acpi_pci_irq_find_prt_entry(dev, pin);
 if (entry) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found %s[%c] _PRT entry\n",
      pci_name(dev), pin_name(pin)));
  return entry;
 }





 bridge = dev->bus->self;
 while (bridge) {
  pin = pci_swizzle_interrupt_pin(dev, pin);

  if ((bridge->class >> 8) == PCI_CLASS_BRIDGE_CARDBUS) {

   bridge_pin = bridge->pin;
   if (!bridge_pin) {
    ACPI_DEBUG_PRINT((ACPI_DB_INFO,
        "No interrupt pin configured for device %s\n",
        pci_name(bridge)));
    return ((void*)0);
   }
   pin = bridge_pin;
  }

  entry = acpi_pci_irq_find_prt_entry(bridge, pin);
  if (entry) {
   ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Derived GSI for %s INT %c from %s\n",
      pci_name(dev), pin_name(orig_pin),
      pci_name(bridge)));
   return entry;
  }

  dev = bridge;
  bridge = dev->bus->self;
 }

 dev_warn(&dev->dev, "can't derive routing for PCI INT %c\n",
   pin_name(orig_pin));
 return ((void*)0);
}
