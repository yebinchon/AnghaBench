
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unbind; int bind; } ;
struct acpi_device {TYPE_1__ ops; } ;


 int acpi_pci_bind ;
 int acpi_pci_unbind ;

int acpi_pci_bind_root(struct acpi_device *device)
{
 device->ops.bind = acpi_pci_bind;
 device->ops.unbind = acpi_pci_unbind;

 return 0;
}
