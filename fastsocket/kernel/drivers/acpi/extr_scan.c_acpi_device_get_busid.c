
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_id; } ;
struct acpi_device {int device_type; TYPE_1__ pnp; int handle; } ;
struct acpi_buffer {int member_0; char* member_1; } ;
typedef int bus_id ;




 scalar_t__ ACPI_IS_ROOT_DEVICE (struct acpi_device*) ;
 int ACPI_SINGLE_NAME ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void acpi_device_get_busid(struct acpi_device *device)
{
 char bus_id[5] = { '?', 0 };
 struct acpi_buffer buffer = { sizeof(bus_id), bus_id };
 int i = 0;







 if (ACPI_IS_ROOT_DEVICE(device)) {
  strcpy(device->pnp.bus_id, "ACPI");
  return;
 }

 switch (device->device_type) {
 case 129:
  strcpy(device->pnp.bus_id, "PWRF");
  break;
 case 128:
  strcpy(device->pnp.bus_id, "SLPF");
  break;
 default:
  acpi_get_name(device->handle, ACPI_SINGLE_NAME, &buffer);

  for (i = 3; i > 1; i--) {
   if (bus_id[i] == '_')
    bus_id[i] = '\0';
   else
    break;
  }
  strcpy(device->pnp.bus_id, bus_id);
  break;
 }
}
