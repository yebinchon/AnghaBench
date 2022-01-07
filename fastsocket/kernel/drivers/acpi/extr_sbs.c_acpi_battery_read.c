
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct acpi_battery {int present; int id; scalar_t__ update_time; TYPE_1__* sbs; } ;
struct TYPE_2__ {int hc; scalar_t__ manager_present; } ;


 int ACPI_SBS_MANAGER ;
 int SMBUS_READ_WORD ;
 int SMBUS_WRITE_WORD ;
 int acpi_battery_get_info (struct acpi_battery*) ;
 int acpi_battery_get_state (struct acpi_battery*) ;
 int acpi_smbus_read (int ,int ,int ,int,int *) ;
 int acpi_smbus_write (int ,int ,int ,int,int *,int) ;

__attribute__((used)) static int acpi_battery_read(struct acpi_battery *battery)
{
 int result = 0, saved_present = battery->present;
 u16 state;

 if (battery->sbs->manager_present) {
  result = acpi_smbus_read(battery->sbs->hc, SMBUS_READ_WORD,
    ACPI_SBS_MANAGER, 0x01, (u8 *)&state);
  if (!result)
   battery->present = state & (1 << battery->id);
  state &= 0x0fff;
  state |= 1 << (battery->id + 12);
  acpi_smbus_write(battery->sbs->hc, SMBUS_WRITE_WORD,
      ACPI_SBS_MANAGER, 0x01, (u8 *)&state, 2);
 } else if (battery->id == 0)
  battery->present = 1;
 if (result || !battery->present)
  return result;

 if (saved_present != battery->present) {
  battery->update_time = 0;
  result = acpi_battery_get_info(battery);
  if (result)
   return result;
 }
 result = acpi_battery_get_state(battery);
 return result;
}
