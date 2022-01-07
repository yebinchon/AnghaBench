
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_handle (int ,char*,int *) ;

__attribute__((used)) static int is_ejectable(acpi_handle handle)
{
 acpi_status status;
 acpi_handle tmp;
 unsigned long long removable;
 status = acpi_get_handle(handle, "_ADR", &tmp);
 if (ACPI_FAILURE(status))
  return 0;
 status = acpi_get_handle(handle, "_EJ0", &tmp);
 if (ACPI_SUCCESS(status))
  return 1;
 status = acpi_evaluate_integer(handle, "_RMV", ((void*)0), &removable);
 if (ACPI_SUCCESS(status) && removable)
  return 1;
 return 0;
}
