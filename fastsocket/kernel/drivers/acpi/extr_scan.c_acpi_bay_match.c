
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENODEV ;
 int acpi_get_handle (int ,char*,int *) ;
 scalar_t__ acpi_get_parent (int ,int *) ;

__attribute__((used)) static int acpi_bay_match(struct acpi_device *device){
 acpi_status status;
 acpi_handle handle;
 acpi_handle tmp;
 acpi_handle phandle;

 handle = device->handle;

 status = acpi_get_handle(handle, "_EJ0", &tmp);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 if ((ACPI_SUCCESS(acpi_get_handle(handle, "_GTF", &tmp))) ||
  (ACPI_SUCCESS(acpi_get_handle(handle, "_GTM", &tmp))) ||
  (ACPI_SUCCESS(acpi_get_handle(handle, "_STM", &tmp))) ||
  (ACPI_SUCCESS(acpi_get_handle(handle, "_SDD", &tmp))))
  return 0;

 if (acpi_get_parent(handle, &phandle))
  return -ENODEV;

        if ((ACPI_SUCCESS(acpi_get_handle(phandle, "_GTF", &tmp))) ||
                (ACPI_SUCCESS(acpi_get_handle(phandle, "_GTM", &tmp))) ||
                (ACPI_SUCCESS(acpi_get_handle(phandle, "_STM", &tmp))) ||
                (ACPI_SUCCESS(acpi_get_handle(phandle, "_SDD", &tmp))))
                return 0;

 return -ENODEV;
}
