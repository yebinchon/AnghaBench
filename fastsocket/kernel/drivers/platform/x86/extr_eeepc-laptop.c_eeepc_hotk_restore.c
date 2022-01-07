
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ wimax_rfkill; scalar_t__ wwan3g_rfkill; scalar_t__ bluetooth_rfkill; scalar_t__ wlan_rfkill; } ;


 int CM_ASL_3G ;
 int CM_ASL_BLUETOOTH ;
 int CM_ASL_WIMAX ;
 int eeepc_rfkill_hotplug () ;
 TYPE_1__* ehotk ;
 int get_acpi (int ) ;
 int rfkill_set_sw_state (scalar_t__,int) ;

__attribute__((used)) static int eeepc_hotk_restore(struct device *device)
{

 if (ehotk->wlan_rfkill)
  eeepc_rfkill_hotplug();

 if (ehotk->bluetooth_rfkill)
  rfkill_set_sw_state(ehotk->bluetooth_rfkill,
        get_acpi(CM_ASL_BLUETOOTH) != 1);
 if (ehotk->wwan3g_rfkill)
  rfkill_set_sw_state(ehotk->wwan3g_rfkill,
        get_acpi(CM_ASL_3G) != 1);
 if (ehotk->wimax_rfkill)
  rfkill_set_sw_state(ehotk->wimax_rfkill,
        get_acpi(CM_ASL_WIMAX) != 1);

 return 0;
}
