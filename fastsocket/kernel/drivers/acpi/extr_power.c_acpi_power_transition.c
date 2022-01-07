
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_handle_list {int count; int * handles; } ;
struct TYPE_4__ {int state; TYPE_1__* states; } ;
struct acpi_device {TYPE_2__ power; } ;
struct TYPE_3__ {struct acpi_handle_list resources; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3 ;
 int ACPI_STATE_UNKNOWN ;
 int EINVAL ;
 int ENODEV ;
 int acpi_power_off_device (int ,struct acpi_device*) ;
 int acpi_power_on (int ,struct acpi_device*) ;

int acpi_power_transition(struct acpi_device *device, int state)
{
 int result = 0;
 struct acpi_handle_list *cl = ((void*)0);
 struct acpi_handle_list *tl = ((void*)0);
 int i = 0;


 if (!device || (state < ACPI_STATE_D0) || (state > ACPI_STATE_D3))
  return -EINVAL;

 if ((device->power.state < ACPI_STATE_D0)
     || (device->power.state > ACPI_STATE_D3))
  return -ENODEV;

 cl = &device->power.states[device->power.state].resources;
 tl = &device->power.states[state].resources;







 for (i = 0; i < tl->count; i++) {
  result = acpi_power_on(tl->handles[i], device);
  if (result)
   goto end;
 }

 if (device->power.state == state) {
  goto end;
 }




 for (i = 0; i < cl->count; i++) {
  result = acpi_power_off_device(cl->handles[i], device);
  if (result)
   goto end;
 }

     end:
 if (result)
  device->power.state = ACPI_STATE_UNKNOWN;
 else {

  device->power.state = state;
 }

 return result;
}
