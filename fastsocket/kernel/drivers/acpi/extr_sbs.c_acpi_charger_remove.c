
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct acpi_sbs {scalar_t__ charger_entry; TYPE_1__ charger; } ;


 int acpi_ac_dir ;
 int acpi_sbs_remove_fs (scalar_t__*,int ) ;
 int power_supply_unregister (TYPE_1__*) ;

__attribute__((used)) static void acpi_charger_remove(struct acpi_sbs *sbs)
{
}
