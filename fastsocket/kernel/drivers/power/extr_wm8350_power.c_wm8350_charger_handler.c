
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_power {int ac; int usb; int battery; struct wm8350_charger_policy* policy; } ;
struct wm8350_charger_policy {int dummy; } ;
struct wm8350 {int dev; struct wm8350_power power; } ;


 int WM8350_BATTERY_CHARGER_CONTROL_1 ;
 int WM8350_CHG_FAST ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int power_supply_changed (int *) ;
 int wm8350_charger_config (struct wm8350*,struct wm8350_charger_policy*) ;
 int wm8350_reg_lock (struct wm8350*) ;
 int wm8350_reg_unlock (struct wm8350*) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static void wm8350_charger_handler(struct wm8350 *wm8350, int irq, void *data)
{
 struct wm8350_power *power = &wm8350->power;
 struct wm8350_charger_policy *policy = power->policy;

 switch (irq) {
 case 139:
  dev_err(wm8350->dev, "battery failed\n");
  break;
 case 134:
  dev_err(wm8350->dev, "charger timeout\n");
  power_supply_changed(&power->battery);
  break;

 case 138:
 case 140:
 case 135:
 case 137:
  power_supply_changed(&power->battery);
  break;

 case 136:
  dev_dbg(wm8350->dev, "fast charger ready\n");
  wm8350_charger_config(wm8350, policy);
  wm8350_reg_unlock(wm8350);
  wm8350_set_bits(wm8350, WM8350_BATTERY_CHARGER_CONTROL_1,
    WM8350_CHG_FAST);
  wm8350_reg_lock(wm8350);
  break;

 case 131:
  dev_warn(wm8350->dev, "battery < 3.9V\n");
  break;
 case 132:
  dev_warn(wm8350->dev, "battery < 3.1V\n");
  break;
 case 133:
  dev_warn(wm8350->dev, "battery < 2.85V\n");
  break;



 case 129:
 case 128:
  wm8350_charger_config(wm8350, policy);
 case 130:
  power_supply_changed(&power->battery);
  power_supply_changed(&power->usb);
  power_supply_changed(&power->ac);
  break;

 default:
  dev_err(wm8350->dev, "Unknown interrupt %d\n", irq);
 }
}
