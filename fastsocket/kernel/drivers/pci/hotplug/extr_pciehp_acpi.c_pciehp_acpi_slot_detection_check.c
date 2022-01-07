
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DEVICE_ACPI_HANDLE (int *) ;
 int ENODEV ;
 scalar_t__ PCIEHP_DETECT_ACPI ;
 scalar_t__ acpi_pci_detect_ejectable (int ) ;
 scalar_t__ slot_detection_mode ;

int pciehp_acpi_slot_detection_check(struct pci_dev *dev)
{
 if (slot_detection_mode != PCIEHP_DETECT_ACPI)
  return 0;
 if (acpi_pci_detect_ejectable(DEVICE_ACPI_HANDLE(&dev->dev)))
  return 0;
 return -ENODEV;
}
