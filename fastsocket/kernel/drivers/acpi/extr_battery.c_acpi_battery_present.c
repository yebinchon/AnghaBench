
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_battery {TYPE_2__* device; } ;
struct TYPE_3__ {int battery_present; } ;
struct TYPE_4__ {TYPE_1__ status; } ;



inline int acpi_battery_present(struct acpi_battery *battery)
{
 return battery->device->status.battery_present;
}
