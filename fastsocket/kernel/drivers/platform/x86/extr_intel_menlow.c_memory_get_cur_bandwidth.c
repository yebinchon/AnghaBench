
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_OK ;
 int EFAULT ;
 int MEMORY_ARG_CUR_BANDWIDTH ;
 int MEMORY_GET_BANDWIDTH ;
 int acpi_evaluate_integer (int ,int ,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static int memory_get_cur_bandwidth(struct thermal_cooling_device *cdev,
        unsigned long *value)
{
 struct acpi_device *device = cdev->devdata;
 acpi_handle handle = device->handle;
 unsigned long long result;
 struct acpi_object_list arg_list;
 union acpi_object arg;
 acpi_status status = AE_OK;

 arg_list.count = 1;
 arg_list.pointer = &arg;
 arg.type = ACPI_TYPE_INTEGER;
 arg.integer.value = MEMORY_ARG_CUR_BANDWIDTH;
 status = acpi_evaluate_integer(handle, MEMORY_GET_BANDWIDTH,
           &arg_list, &result);
 if (ACPI_FAILURE(status))
  return -EFAULT;

 *value = result;
 return 0;
}
