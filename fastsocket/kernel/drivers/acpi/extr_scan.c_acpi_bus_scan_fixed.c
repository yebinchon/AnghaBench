
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct acpi_bus_ops {int acpi_op_add; int acpi_op_start; } ;
typedef int ops ;
struct TYPE_2__ {int flags; } ;


 int ACPI_BUS_TYPE_POWER_BUTTON ;
 int ACPI_BUS_TYPE_SLEEP_BUTTON ;
 int ACPI_FADT_POWER_BUTTON ;
 int ACPI_FADT_SLEEP_BUTTON ;
 int ACPI_STA_DEFAULT ;
 int acpi_add_single_object (struct acpi_device**,int *,int ,int ,struct acpi_bus_ops*) ;
 TYPE_1__ acpi_gbl_FADT ;
 int memset (struct acpi_bus_ops*,int ,int) ;

__attribute__((used)) static int acpi_bus_scan_fixed(void)
{
 int result = 0;
 struct acpi_device *device = ((void*)0);
 struct acpi_bus_ops ops;

 memset(&ops, 0, sizeof(ops));
 ops.acpi_op_add = 1;
 ops.acpi_op_start = 1;




 if ((acpi_gbl_FADT.flags & ACPI_FADT_POWER_BUTTON) == 0) {
  result = acpi_add_single_object(&device, ((void*)0),
      ACPI_BUS_TYPE_POWER_BUTTON,
      ACPI_STA_DEFAULT,
      &ops);
 }

 if ((acpi_gbl_FADT.flags & ACPI_FADT_SLEEP_BUTTON) == 0) {
  result = acpi_add_single_object(&device, ((void*)0),
      ACPI_BUS_TYPE_SLEEP_BUTTON,
      ACPI_STA_DEFAULT,
      &ops);
 }

 return result;
}
