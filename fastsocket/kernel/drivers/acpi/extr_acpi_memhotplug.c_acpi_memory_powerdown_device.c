
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_memory_device {TYPE_2__* device; } ;
typedef int acpi_status ;
struct TYPE_4__ {int handle; } ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned long long ACPI_STA_DEVICE_ENABLED ;
 int ACPI_TYPE_INTEGER ;
 int AE_INFO ;
 int EINVAL ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static int acpi_memory_powerdown_device(struct acpi_memory_device *mem_device)
{
 acpi_status status;
 struct acpi_object_list arg_list;
 union acpi_object arg;
 unsigned long long current_status;



 arg_list.count = 1;
 arg_list.pointer = &arg;
 arg.type = ACPI_TYPE_INTEGER;
 arg.integer.value = 1;
 status = acpi_evaluate_object(mem_device->device->handle,
          "_EJ0", &arg_list, ((void*)0));

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "_EJ0 failed"));
  return -ENODEV;
 }


 status = acpi_evaluate_integer(mem_device->device->handle, "_STA",
           ((void*)0), &current_status);
 if (ACPI_FAILURE(status))
  return -ENODEV;


 if (current_status & ACPI_STA_DEVICE_ENABLED)
  return -EINVAL;

 return 0;
}
