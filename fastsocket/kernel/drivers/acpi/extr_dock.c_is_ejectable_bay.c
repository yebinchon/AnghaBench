
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int acpi_get_parent (int ,int *) ;
 scalar_t__ is_ata (int ) ;
 scalar_t__ is_battery (int ) ;
 int is_ejectable (int ) ;

__attribute__((used)) static int is_ejectable_bay(acpi_handle handle)
{
 acpi_handle phandle;
 if (!is_ejectable(handle))
  return 0;
 if (is_battery(handle) || is_ata(handle))
  return 1;
 if (!acpi_get_parent(handle, &phandle) && is_ata(phandle))
  return 1;
 return 0;
}
