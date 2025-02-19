
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ power_resources; scalar_t__ explicit_get; } ;
struct TYPE_12__ {int state; TYPE_4__ flags; } ;
struct TYPE_11__ {int bus_id; } ;
struct TYPE_7__ {int power_manageable; } ;
struct acpi_device {TYPE_6__ power; TYPE_5__ pnp; int handle; TYPE_3__* parent; TYPE_1__ flags; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_8__ {int state; } ;
struct TYPE_9__ {TYPE_2__ power; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_STATE_D0 ;
 int ACPI_STATE_UNKNOWN ;
 int ENODEV ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_power_get_inferred_state (struct acpi_device*) ;

int acpi_bus_get_power(acpi_handle handle, int *state)
{
 int result = 0;
 acpi_status status = 0;
 struct acpi_device *device = ((void*)0);
 unsigned long long psc = 0;


 result = acpi_bus_get_device(handle, &device);
 if (result)
  return result;

 *state = ACPI_STATE_UNKNOWN;

 if (!device->flags.power_manageable) {

  if (device->parent)
   *state = device->parent->power.state;
  else
   *state = ACPI_STATE_D0;
 } else {




  if (device->power.flags.explicit_get) {
   status = acpi_evaluate_integer(device->handle, "_PSC",
             ((void*)0), &psc);
   if (ACPI_FAILURE(status))
    return -ENODEV;
   device->power.state = (int)psc;
  } else if (device->power.flags.power_resources) {
   result = acpi_power_get_inferred_state(device);
   if (result)
    return result;
  }

  *state = device->power.state;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Device [%s] power state is D%d\n",
     device->pnp.bus_id, device->power.state));

 return 0;
}
