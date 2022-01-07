
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int WM831X_CHARGER_STATUS ;

 int WM831X_CHG_STATE_MASK ;


 int WM831X_PWR_SRC_BATT ;
 int WM831X_SYSTEM_STATUS ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_bat_check_status(struct wm831x *wm831x, int *status)
{
 int ret;

 ret = wm831x_reg_read(wm831x, WM831X_SYSTEM_STATUS);
 if (ret < 0)
  return ret;

 if (ret & WM831X_PWR_SRC_BATT) {
  *status = POWER_SUPPLY_STATUS_DISCHARGING;
  return 0;
 }

 ret = wm831x_reg_read(wm831x, WM831X_CHARGER_STATUS);
 if (ret < 0)
  return ret;

 switch (ret & WM831X_CHG_STATE_MASK) {
 case 129:
  *status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 case 128:
 case 130:
  *status = POWER_SUPPLY_STATUS_CHARGING;
  break;

 default:
  *status = POWER_SUPPLY_STATUS_UNKNOWN;
  break;
 }

 return 0;
}
