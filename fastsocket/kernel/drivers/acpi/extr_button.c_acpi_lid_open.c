
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 TYPE_1__* lid_device ;

int acpi_lid_open(void)
{
 acpi_status status;
 unsigned long long state;

 if (!lid_device)
  return -ENODEV;

 status = acpi_evaluate_integer(lid_device->handle, "_LID", ((void*)0),
           &state);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 return !!state;
}
