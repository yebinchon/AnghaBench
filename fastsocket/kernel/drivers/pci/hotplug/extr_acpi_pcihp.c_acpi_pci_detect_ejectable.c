
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int ACPI_TYPE_DEVICE ;
 int acpi_walk_namespace (int ,int ,int,int ,void*,int *) ;
 int check_hotplug ;

int acpi_pci_detect_ejectable(acpi_handle handle)
{
 int found = 0;

 if (!handle)
  return found;

 acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
       check_hotplug, (void *)&found, ((void*)0));
 return found;
}
