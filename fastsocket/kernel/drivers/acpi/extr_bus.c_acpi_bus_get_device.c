
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 int acpi_bus_data_handler ;
 int acpi_get_data (int ,int ,void**) ;

int acpi_bus_get_device(acpi_handle handle, struct acpi_device **device)
{
 acpi_status status = AE_OK;


 if (!device)
  return -EINVAL;



 status = acpi_get_data(handle, acpi_bus_data_handler, (void **)device);
 if (ACPI_FAILURE(status) || !*device) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "No context for object [%p]\n",
      handle));
  return -ENODEV;
 }

 return 0;
}
