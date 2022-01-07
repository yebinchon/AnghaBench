
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_sbs {struct acpi_battery* battery; } ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct acpi_battery {scalar_t__ proc_entry; TYPE_1__ bat; scalar_t__ have_sysfs_alarm; } ;


 int acpi_battery_dir ;
 int acpi_sbs_remove_fs (scalar_t__*,int ) ;
 int alarm_attr ;
 int device_remove_file (scalar_t__,int *) ;
 int power_supply_unregister (TYPE_1__*) ;

__attribute__((used)) static void acpi_battery_remove(struct acpi_sbs *sbs, int id)
{
 struct acpi_battery *battery = &sbs->battery[id];
}
