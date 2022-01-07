
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ENODEV ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int acpi_topstar_fncx_switch(struct acpi_device *device, bool state)
{
 acpi_status status;
 union acpi_object fncx_params[1] = {
  { .type = ACPI_TYPE_INTEGER }
 };
 struct acpi_object_list fncx_arg_list = { 1, &fncx_params[0] };

 fncx_params[0].integer.value = state ? 0x86 : 0x87;
 status = acpi_evaluate_object(device->handle, "FNCX", &fncx_arg_list, ((void*)0));
 if (ACPI_FAILURE(status)) {
  pr_err("Unable to switch FNCX notifications\n");
  return -ENODEV;
 }

 return 0;
}
