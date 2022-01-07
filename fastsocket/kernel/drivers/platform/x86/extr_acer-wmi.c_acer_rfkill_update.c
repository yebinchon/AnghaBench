
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct work_struct {int dummy; } ;
typedef int acpi_status ;


 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_WIRELESS ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int HZ ;
 int acer_rfkill_work ;
 int bluetooth_rfkill ;
 int get_u32 (int *,int ) ;
 scalar_t__ has_cap (int ) ;
 int rfkill_set_sw_state (int ,int) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int wireless_rfkill ;

__attribute__((used)) static void acer_rfkill_update(struct work_struct *ignored)
{
 u32 state;
 acpi_status status;

 status = get_u32(&state, ACER_CAP_WIRELESS);
 if (ACPI_SUCCESS(status))
  rfkill_set_sw_state(wireless_rfkill, !state);

 if (has_cap(ACER_CAP_BLUETOOTH)) {
  status = get_u32(&state, ACER_CAP_BLUETOOTH);
  if (ACPI_SUCCESS(status))
   rfkill_set_sw_state(bluetooth_rfkill, !state);
 }

 schedule_delayed_work(&acer_rfkill_work, round_jiffies_relative(HZ));
}
