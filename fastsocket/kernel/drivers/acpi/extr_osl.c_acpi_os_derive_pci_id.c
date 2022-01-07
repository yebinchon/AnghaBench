
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_pci_id {int bus; } ;
typedef int acpi_handle ;


 int acpi_os_derive_pci_id_2 (int ,int ,struct acpi_pci_id**,int*,int *) ;

void acpi_os_derive_pci_id(acpi_handle rhandle,
      acpi_handle chandle,
      struct acpi_pci_id **id)
{
 int is_bridge = 1;
 u8 bus_number = (*id)->bus;

 acpi_os_derive_pci_id_2(rhandle, chandle, id, &is_bridge, &bus_number);
}
