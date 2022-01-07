
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;


 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int POWER_SUPPLY_CHARGE_TYPE_UNKNOWN ;
 int WM8350_BATTERY_CHARGER_CONTROL_2 ;

 int WM8350_CHG_STS_MASK ;


 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static int wm8350_bat_get_charge_type(struct wm8350 *wm8350)
{
 int state;

 state = wm8350_reg_read(wm8350, WM8350_BATTERY_CHARGER_CONTROL_2) &
     WM8350_CHG_STS_MASK;
 switch (state) {
 case 129:
  return POWER_SUPPLY_CHARGE_TYPE_NONE;
 case 128:
  return POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
 case 130:
  return POWER_SUPPLY_CHARGE_TYPE_FAST;
 default:
  return POWER_SUPPLY_CHARGE_TYPE_UNKNOWN;
 }
}
