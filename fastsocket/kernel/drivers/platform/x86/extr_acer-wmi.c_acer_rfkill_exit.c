
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACER_CAP_BLUETOOTH ;
 int acer_rfkill_work ;
 int bluetooth_rfkill ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ has_cap (int ) ;
 int rfkill_destroy (int ) ;
 int rfkill_unregister (int ) ;
 int wireless_rfkill ;

__attribute__((used)) static void acer_rfkill_exit(void)
{
 cancel_delayed_work_sync(&acer_rfkill_work);

 rfkill_unregister(wireless_rfkill);
 rfkill_destroy(wireless_rfkill);

 if (has_cap(ACER_CAP_BLUETOOTH)) {
  rfkill_unregister(bluetooth_rfkill);
  rfkill_destroy(bluetooth_rfkill);
 }
 return;
}
