
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int METHOD_NAME__CRS ;
 int acpi_walk_resources (int ,int ,int ,int *) ;
 int complete (int *) ;
 struct acpi_device* hv_acpi_dev ;
 int irq ;
 int probe_event ;
 int vmbus_walk_resources ;

__attribute__((used)) static int vmbus_acpi_add(struct acpi_device *device)
{
 acpi_status result;

 hv_acpi_dev = device;

 result = acpi_walk_resources(device->handle, METHOD_NAME__CRS,
     vmbus_walk_resources, &irq);

 if (ACPI_FAILURE(result)) {
  complete(&probe_event);
  return -ENODEV;
 }
 complete(&probe_event);
 return 0;
}
