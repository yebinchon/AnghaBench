
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_handle ;


 int ACPI_TYPE_DEVICE ;
 int acpi_pci_detect_ejectable (int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,void*,int *) ;
 int is_pci_dock_device ;

__attribute__((used)) static int detect_ejectable_slots(acpi_handle handle)
{
 int found = acpi_pci_detect_ejectable(handle);
 if (!found) {
  acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, (u32)1,
        is_pci_dock_device, (void *)&found, ((void*)0));
 }
 return found;
}
