
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct dock_station {int handle; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;
 int acpi_get_handle (int ,char*,int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static void eject_dock(struct dock_station *ds)
{
 struct acpi_object_list arg_list;
 union acpi_object arg;
 acpi_status status;
 acpi_handle tmp;


 status = acpi_get_handle(ds->handle, "_EJ0", &tmp);
 if (ACPI_FAILURE(status)) {
  pr_debug("No _EJ0 support for dock device\n");
  return;
 }

 arg_list.count = 1;
 arg_list.pointer = &arg;
 arg.type = ACPI_TYPE_INTEGER;
 arg.integer.value = 1;

 if (ACPI_FAILURE(acpi_evaluate_object(ds->handle, "_EJ0",
           &arg_list, ((void*)0))))
  pr_debug("Failed to evaluate _EJ0!\n");
}
