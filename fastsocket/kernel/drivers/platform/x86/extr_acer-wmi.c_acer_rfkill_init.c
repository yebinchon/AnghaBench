
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_WIRELESS ;
 int HZ ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_WLAN ;
 int acer_rfkill_register (struct device*,int ,char*,int ) ;
 int acer_rfkill_work ;
 int bluetooth_rfkill ;
 scalar_t__ has_cap (int ) ;
 int rfkill_destroy (int ) ;
 int rfkill_unregister (int ) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int wireless_rfkill ;

__attribute__((used)) static int acer_rfkill_init(struct device *dev)
{
 wireless_rfkill = acer_rfkill_register(dev, RFKILL_TYPE_WLAN,
  "acer-wireless", ACER_CAP_WIRELESS);
 if (IS_ERR(wireless_rfkill))
  return PTR_ERR(wireless_rfkill);

 if (has_cap(ACER_CAP_BLUETOOTH)) {
  bluetooth_rfkill = acer_rfkill_register(dev,
   RFKILL_TYPE_BLUETOOTH, "acer-bluetooth",
   ACER_CAP_BLUETOOTH);
  if (IS_ERR(bluetooth_rfkill)) {
   rfkill_unregister(wireless_rfkill);
   rfkill_destroy(wireless_rfkill);
   return PTR_ERR(bluetooth_rfkill);
  }
 }

 schedule_delayed_work(&acer_rfkill_work, round_jiffies_relative(HZ));

 return 0;
}
