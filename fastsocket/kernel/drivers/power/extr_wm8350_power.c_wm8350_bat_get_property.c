
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct wm8350 {int dummy; } ;
struct power_supply {TYPE_1__* dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int parent; } ;


 int EINVAL ;





 int WM8350_BATT_SUPPLY ;
 struct wm8350* dev_get_drvdata (int ) ;
 int wm8350_bat_check_health (struct wm8350*) ;
 int wm8350_bat_get_charge_type (struct wm8350*) ;
 int wm8350_batt_status (struct wm8350*) ;
 int wm8350_get_supplies (struct wm8350*) ;
 int wm8350_read_battery_uvolts (struct wm8350*) ;

__attribute__((used)) static int wm8350_bat_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct wm8350 *wm8350 = dev_get_drvdata(psy->dev->parent);
 int ret = 0;

 switch (psp) {
 case 129:
  val->intval = wm8350_batt_status(wm8350);
  break;
 case 130:
  val->intval = !!(wm8350_get_supplies(wm8350) &
     WM8350_BATT_SUPPLY);
  break;
 case 128:
  val->intval = wm8350_read_battery_uvolts(wm8350);
  break;
 case 131:
  val->intval = wm8350_bat_check_health(wm8350);
  break;
 case 132:
  val->intval = wm8350_bat_get_charge_type(wm8350);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
