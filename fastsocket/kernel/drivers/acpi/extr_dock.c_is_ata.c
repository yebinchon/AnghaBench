
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_get_handle (int ,char*,int *) ;

__attribute__((used)) static int is_ata(acpi_handle handle)
{
 acpi_handle tmp;

 if ((ACPI_SUCCESS(acpi_get_handle(handle, "_GTF", &tmp))) ||
    (ACPI_SUCCESS(acpi_get_handle(handle, "_GTM", &tmp))) ||
    (ACPI_SUCCESS(acpi_get_handle(handle, "_STM", &tmp))) ||
    (ACPI_SUCCESS(acpi_get_handle(handle, "_SDD", &tmp))))
  return 1;

 return 0;
}
