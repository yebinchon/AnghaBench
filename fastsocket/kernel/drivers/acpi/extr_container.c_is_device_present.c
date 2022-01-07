
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned long long ACPI_STA_DEVICE_PRESENT ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_handle (int ,char*,int *) ;

__attribute__((used)) static int is_device_present(acpi_handle handle)
{
 acpi_handle temp;
 acpi_status status;
 unsigned long long sta;


 status = acpi_get_handle(handle, "_STA", &temp);
 if (ACPI_FAILURE(status))
  return 1;

 status = acpi_evaluate_integer(handle, "_STA", ((void*)0), &sta);
 if (ACPI_FAILURE(status))
  return 0;

 return ((sta & ACPI_STA_DEVICE_PRESENT) == ACPI_STA_DEVICE_PRESENT);
}
