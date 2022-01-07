
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_memory_device {TYPE_1__* device; } ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned long long ACPI_STA_DEVICE_ENABLED ;
 unsigned long long ACPI_STA_DEVICE_FUNCTIONING ;
 unsigned long long ACPI_STA_DEVICE_PRESENT ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int acpi_memory_check_device(struct acpi_memory_device *mem_device)
{
 unsigned long long current_status;


 if (ACPI_FAILURE(acpi_evaluate_integer(mem_device->device->handle, "_STA",
            ((void*)0), &current_status)))
  return -ENODEV;




 if (!((current_status & ACPI_STA_DEVICE_PRESENT)
       && (current_status & ACPI_STA_DEVICE_ENABLED)
       && (current_status & ACPI_STA_DEVICE_FUNCTIONING)))
  return -ENODEV;

 return 0;
}
