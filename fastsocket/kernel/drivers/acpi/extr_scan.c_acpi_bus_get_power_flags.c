
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {int valid; int explicit_set; } ;
struct TYPE_8__ {scalar_t__ count; } ;
struct acpi_device_power_state {int power; int latency; TYPE_2__ flags; TYPE_4__ resources; } ;
struct TYPE_5__ {int explicit_get; int inrush_current; int power_resources; } ;
struct TYPE_7__ {int state; struct acpi_device_power_state* states; TYPE_1__ flags; } ;
struct acpi_device {TYPE_3__ power; int handle; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;


 size_t ACPI_STATE_D0 ;
 size_t ACPI_STATE_D3 ;
 int ACPI_STATE_UNKNOWN ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_bus_get_power (int ,int *) ;
 int acpi_evaluate_reference (int ,char*,int *,TYPE_4__*) ;
 int acpi_get_handle (int ,char*,int **) ;

__attribute__((used)) static int acpi_bus_get_power_flags(struct acpi_device *device)
{
 acpi_status status = 0;
 acpi_handle handle = ((void*)0);
 u32 i = 0;





 status = acpi_get_handle(device->handle, "_PSC", &handle);
 if (ACPI_SUCCESS(status))
  device->power.flags.explicit_get = 1;
 status = acpi_get_handle(device->handle, "_IRC", &handle);
 if (ACPI_SUCCESS(status))
  device->power.flags.inrush_current = 1;




 for (i = ACPI_STATE_D0; i <= ACPI_STATE_D3; i++) {
  struct acpi_device_power_state *ps = &device->power.states[i];
  char object_name[5] = { '_', 'P', 'R', '0' + i, '\0' };


  acpi_evaluate_reference(device->handle, object_name, ((void*)0),
     &ps->resources);
  if (ps->resources.count) {
   device->power.flags.power_resources = 1;
   ps->flags.valid = 1;
  }


  object_name[2] = 'S';
  status = acpi_get_handle(device->handle, object_name, &handle);
  if (ACPI_SUCCESS(status)) {
   ps->flags.explicit_set = 1;
   ps->flags.valid = 1;
  }


  if (ps->resources.count || ps->flags.explicit_set)
   ps->flags.valid = 1;

  ps->power = -1;
  ps->latency = -1;
 }


 device->power.states[ACPI_STATE_D0].flags.valid = 1;
 device->power.states[ACPI_STATE_D0].power = 100;
 device->power.states[ACPI_STATE_D3].flags.valid = 1;
 device->power.states[ACPI_STATE_D3].power = 0;



 device->power.state = ACPI_STATE_UNKNOWN;
 acpi_bus_get_power(device->handle, &(device->power.state));

 return 0;
}
