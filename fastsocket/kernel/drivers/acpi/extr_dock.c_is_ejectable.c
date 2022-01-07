
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_get_handle (int ,char*,int *) ;

__attribute__((used)) static int is_ejectable(acpi_handle handle)
{
 acpi_status status;
 acpi_handle tmp;

 status = acpi_get_handle(handle, "_EJ0", &tmp);
 if (ACPI_FAILURE(status))
  return 0;
 return 1;
}
