
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int wimax_rfkill; int wwan3g_rfkill; int bluetooth_rfkill; int wlan_rfkill; int hotplug_lock; } ;


 int CM_ASL_3G ;
 int CM_ASL_BLUETOOTH ;
 int CM_ASL_WIMAX ;
 int CM_ASL_WLAN ;
 int EBUSY ;
 int ENODEV ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_WIMAX ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 int eeepc_new_rfkill (int *,char*,struct device*,int ,int ) ;
 int eeepc_register_rfkill_notifier (char*) ;
 int eeepc_rfkill_exit () ;
 int eeepc_rfkill_hotplug () ;
 int eeepc_setup_pci_hotplug () ;
 TYPE_1__* ehotk ;
 int mutex_init (int *) ;

__attribute__((used)) static int eeepc_rfkill_init(struct device *dev)
{
 int result = 0;

 mutex_init(&ehotk->hotplug_lock);

 result = eeepc_new_rfkill(&ehotk->wlan_rfkill,
      "eeepc-wlan", dev,
      RFKILL_TYPE_WLAN, CM_ASL_WLAN);

 if (result && result != -ENODEV)
  goto exit;

 result = eeepc_new_rfkill(&ehotk->bluetooth_rfkill,
      "eeepc-bluetooth", dev,
      RFKILL_TYPE_BLUETOOTH, CM_ASL_BLUETOOTH);

 if (result && result != -ENODEV)
  goto exit;

 result = eeepc_new_rfkill(&ehotk->wwan3g_rfkill,
      "eeepc-wwan3g", dev,
      RFKILL_TYPE_WWAN, CM_ASL_3G);

 if (result && result != -ENODEV)
  goto exit;

 result = eeepc_new_rfkill(&ehotk->wimax_rfkill,
      "eeepc-wimax", dev,
      RFKILL_TYPE_WIMAX, CM_ASL_WIMAX);

 if (result && result != -ENODEV)
  goto exit;

 result = eeepc_setup_pci_hotplug();




 if (result == -EBUSY)
  result = 0;

 eeepc_register_rfkill_notifier("\\_SB.PCI0.P0P5");
 eeepc_register_rfkill_notifier("\\_SB.PCI0.P0P6");
 eeepc_register_rfkill_notifier("\\_SB.PCI0.P0P7");




 eeepc_rfkill_hotplug();

exit:
 if (result && result != -ENODEV)
  eeepc_rfkill_exit();
 return result;
}
