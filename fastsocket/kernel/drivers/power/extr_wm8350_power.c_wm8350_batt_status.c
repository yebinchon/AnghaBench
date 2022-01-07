
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int WM8350_BATTERY_CHARGER_CONTROL_2 ;

 int WM8350_CHG_STS_MASK ;


 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static int wm8350_batt_status(struct wm8350 *wm8350)
{
 u16 state;

 state = wm8350_reg_read(wm8350, WM8350_BATTERY_CHARGER_CONTROL_2);
 state &= WM8350_CHG_STS_MASK;

 switch (state) {
 case 129:
  return POWER_SUPPLY_STATUS_DISCHARGING;

 case 128:
 case 130:
  return POWER_SUPPLY_STATUS_CHARGING;

 default:
  return POWER_SUPPLY_STATUS_UNKNOWN;
 }
}
