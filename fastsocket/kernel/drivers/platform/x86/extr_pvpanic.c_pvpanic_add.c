
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int METHOD_NAME__CRS ;
 int acpi_evaluate_integer (int ,char*,int *,int*) ;
 int acpi_walk_resources (int ,int ,int ,int *) ;
 int atomic_notifier_chain_register (int *,int *) ;
 int panic_notifier_list ;
 int port ;
 int pvpanic_panic_nb ;
 int pvpanic_walk_resources ;

__attribute__((used)) static int pvpanic_add(struct acpi_device *device)
{
 acpi_status status;
 u64 ret;

 status = acpi_evaluate_integer(device->handle, "_STA", ((void*)0),
           &ret);

 if (ACPI_FAILURE(status) || (ret & 0x0B) != 0x0B)
  return -ENODEV;

 acpi_walk_resources(device->handle, METHOD_NAME__CRS,
       pvpanic_walk_resources, ((void*)0));

 if (!port)
  return -ENODEV;

 atomic_notifier_chain_register(&panic_notifier_list,
           &pvpanic_panic_nb);

 return 0;
}
