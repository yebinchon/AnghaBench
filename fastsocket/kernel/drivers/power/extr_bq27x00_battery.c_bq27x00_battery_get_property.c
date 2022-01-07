
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct bq27x00_device_info {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;





 int bq27x00_battery_current (struct bq27x00_device_info*) ;
 int bq27x00_battery_rsoc (struct bq27x00_device_info*) ;
 int bq27x00_battery_temperature (struct bq27x00_device_info*) ;
 int bq27x00_battery_voltage (struct bq27x00_device_info*) ;
 struct bq27x00_device_info* to_bq27x00_device_info (struct power_supply*) ;

__attribute__((used)) static int bq27x00_battery_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct bq27x00_device_info *di = to_bq27x00_device_info(psy);

 switch (psp) {
 case 128:
 case 130:
  val->intval = bq27x00_battery_voltage(di);
  if (psp == 130)
   val->intval = val->intval <= 0 ? 0 : 1;
  break;
 case 131:
  val->intval = bq27x00_battery_current(di);
  break;
 case 132:
  val->intval = bq27x00_battery_rsoc(di);
  break;
 case 129:
  val->intval = bq27x00_battery_temperature(di);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
