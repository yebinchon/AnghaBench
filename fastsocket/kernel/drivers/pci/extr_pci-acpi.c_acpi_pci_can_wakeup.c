
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ DEVICE_ACPI_HANDLE (int *) ;
 int acpi_bus_can_wakeup (scalar_t__) ;

__attribute__((used)) static bool acpi_pci_can_wakeup(struct pci_dev *dev)
{
 acpi_handle handle = DEVICE_ACPI_HANDLE(&dev->dev);

 return handle ? acpi_bus_can_wakeup(handle) : 0;
}
