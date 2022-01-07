
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_container {int dummy; } ;
typedef int acpi_status ;


 int AE_OK ;
 struct acpi_container* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct acpi_container*) ;

__attribute__((used)) static int acpi_container_remove(struct acpi_device *device, int type)
{
 acpi_status status = AE_OK;
 struct acpi_container *pc = ((void*)0);

 pc = acpi_driver_data(device);
 kfree(pc);
 return status;
}
