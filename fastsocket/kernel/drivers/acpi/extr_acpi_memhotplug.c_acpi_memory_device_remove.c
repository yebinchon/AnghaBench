
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_memory_device {int dummy; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_memory_device* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct acpi_memory_device*) ;

__attribute__((used)) static int acpi_memory_device_remove(struct acpi_device *device, int type)
{
 struct acpi_memory_device *mem_device = ((void*)0);


 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 mem_device = acpi_driver_data(device);
 kfree(mem_device);

 return 0;
}
