
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CM_ASL_WLAN ;
 int get_acpi (int ) ;

__attribute__((used)) static bool eeepc_wlan_rfkill_blocked(void)
{
 if (get_acpi(CM_ASL_WLAN) == 1)
  return 0;
 return 1;
}
