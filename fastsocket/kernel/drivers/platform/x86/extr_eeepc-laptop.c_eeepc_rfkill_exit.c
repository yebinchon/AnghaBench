
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * wimax_rfkill; int * wwan3g_rfkill; int * bluetooth_rfkill; scalar_t__ hotplug_slot; int * wlan_rfkill; } ;


 int eeepc_rfkill_hotplug () ;
 int eeepc_unregister_rfkill_notifier (char*) ;
 TYPE_1__* ehotk ;
 int pci_hp_deregister (scalar_t__) ;
 int rfkill_destroy (int *) ;
 int rfkill_unregister (int *) ;

__attribute__((used)) static void eeepc_rfkill_exit(void)
{
 eeepc_unregister_rfkill_notifier("\\_SB.PCI0.P0P5");
 eeepc_unregister_rfkill_notifier("\\_SB.PCI0.P0P6");
 eeepc_unregister_rfkill_notifier("\\_SB.PCI0.P0P7");
 if (ehotk->wlan_rfkill) {
  rfkill_unregister(ehotk->wlan_rfkill);
  rfkill_destroy(ehotk->wlan_rfkill);
  ehotk->wlan_rfkill = ((void*)0);
 }




 eeepc_rfkill_hotplug();
 if (ehotk->hotplug_slot)
  pci_hp_deregister(ehotk->hotplug_slot);

 if (ehotk->bluetooth_rfkill) {
  rfkill_unregister(ehotk->bluetooth_rfkill);
  rfkill_destroy(ehotk->bluetooth_rfkill);
  ehotk->bluetooth_rfkill = ((void*)0);
 }
 if (ehotk->wwan3g_rfkill) {
  rfkill_unregister(ehotk->wwan3g_rfkill);
  rfkill_destroy(ehotk->wwan3g_rfkill);
  ehotk->wwan3g_rfkill = ((void*)0);
 }
 if (ehotk->wimax_rfkill) {
  rfkill_unregister(ehotk->wimax_rfkill);
  rfkill_destroy(ehotk->wimax_rfkill);
  ehotk->wimax_rfkill = ((void*)0);
 }
}
