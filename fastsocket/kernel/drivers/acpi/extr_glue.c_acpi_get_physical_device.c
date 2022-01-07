
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_get_data (int ,int ,void**) ;
 int acpi_glue_data_handler ;
 struct device* get_device (struct device*) ;

struct device *acpi_get_physical_device(acpi_handle handle)
{
 acpi_status status;
 struct device *dev;

 status = acpi_get_data(handle, acpi_glue_data_handler, (void **)&dev);
 if (ACPI_SUCCESS(status))
  return get_device(dev);
 return ((void*)0);
}
