
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hotplug_slot {int dummy; } ;


 int CM_ASL_WLAN ;
 int EINVAL ;
 int get_acpi (int ) ;

__attribute__((used)) static int eeepc_get_adapter_status(struct hotplug_slot *hotplug_slot,
        u8 *value)
{
 int val = get_acpi(CM_ASL_WLAN);

 if (val == 1 || val == 0)
  *value = val;
 else
  return -EINVAL;

 return 0;
}
