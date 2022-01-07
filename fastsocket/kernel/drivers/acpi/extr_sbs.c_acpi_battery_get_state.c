
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct acpi_battery {scalar_t__ update_time; TYPE_1__* sbs; } ;
struct TYPE_5__ {int offset; int command; int mode; } ;
struct TYPE_4__ {int hc; } ;


 int ACPI_SBS_BATTERY ;
 int ARRAY_SIZE (TYPE_2__*) ;
 int acpi_smbus_read (int ,int ,int ,int ,int *) ;
 int cache_time ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 TYPE_2__* state_readers ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static int acpi_battery_get_state(struct acpi_battery *battery)
{
 int i, result = 0;

 if (battery->update_time &&
     time_before(jiffies, battery->update_time +
    msecs_to_jiffies(cache_time)))
  return 0;
 for (i = 0; i < ARRAY_SIZE(state_readers); ++i) {
  result = acpi_smbus_read(battery->sbs->hc,
      state_readers[i].mode,
      ACPI_SBS_BATTERY,
      state_readers[i].command,
             (u8 *)battery +
      state_readers[i].offset);
  if (result)
   goto end;
 }
      end:
 battery->update_time = jiffies;
 return result;
}
