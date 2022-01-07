
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ wlan_rfkill; } ;


 int CM_ASL_WLAN ;
 TYPE_1__* ehotk ;
 int get_acpi (int ) ;
 int set_acpi (int ,int) ;

__attribute__((used)) static int eeepc_hotk_thaw(struct device *device)
{
 if (ehotk->wlan_rfkill) {
  bool wlan;






  wlan = get_acpi(CM_ASL_WLAN);
  set_acpi(CM_ASL_WLAN, wlan);
 }

 return 0;
}
