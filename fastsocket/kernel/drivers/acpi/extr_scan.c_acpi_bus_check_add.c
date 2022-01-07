
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dummy; } ;
struct acpi_bus_ops {scalar_t__ acpi_op_add; scalar_t__ acpi_op_start; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned long long ACPI_STA_DEVICE_FUNCTIONING ;
 unsigned long long ACPI_STA_DEVICE_PRESENT ;
 int AE_CTRL_DEPTH ;
 int AE_OK ;
 int acpi_add_single_object (struct acpi_device**,int ,int,unsigned long long,struct acpi_bus_ops*) ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_type_and_status (int ,int*,unsigned long long*) ;
 int acpi_start_single_object (struct acpi_device*) ;

__attribute__((used)) static acpi_status acpi_bus_check_add(acpi_handle handle, u32 lvl,
          void *context, void **return_value)
{
 struct acpi_bus_ops *ops = context;
 int type;
 unsigned long long sta;
 struct acpi_device *device;
 acpi_status status;
 int result;

 result = acpi_bus_type_and_status(handle, &type, &sta);
 if (result)
  return AE_OK;

 if (!(sta & ACPI_STA_DEVICE_PRESENT) &&
     !(sta & ACPI_STA_DEVICE_FUNCTIONING))
  return AE_CTRL_DEPTH;





 device = ((void*)0);
 acpi_bus_get_device(handle, &device);
 if (ops->acpi_op_add && !device)
  acpi_add_single_object(&device, handle, type, sta, ops);

 if (!device)
  return AE_CTRL_DEPTH;

 if (ops->acpi_op_start && !(ops->acpi_op_add)) {
  status = acpi_start_single_object(device);
  if (ACPI_FAILURE(status))
   return AE_CTRL_DEPTH;
 }

 if (!*return_value)
  *return_value = device;
 return AE_OK;
}
