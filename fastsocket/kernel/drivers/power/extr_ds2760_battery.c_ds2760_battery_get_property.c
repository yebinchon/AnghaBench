
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct ds2760_device_info {int rem_capacity; int life_sec; int temp_C; int accum_current_uAh; int empty_uAh; int full_active_uAh; int rated_capacity; int current_uA; int voltage_uV; int charge_status; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int ds2760_battery_read_status (struct ds2760_device_info*) ;
 struct ds2760_device_info* to_ds2760_device_info (struct power_supply*) ;

__attribute__((used)) static int ds2760_battery_get_property(struct power_supply *psy,
           enum power_supply_property psp,
           union power_supply_propval *val)
{
 struct ds2760_device_info *di = to_ds2760_device_info(psy);

 switch (psp) {
 case 131:
  val->intval = di->charge_status;
  return 0;
 default:
  break;
 }

 ds2760_battery_read_status(di);

 switch (psp) {
 case 128:
  val->intval = di->voltage_uV;
  break;
 case 132:
  val->intval = di->current_uA;
  break;
 case 134:
  val->intval = di->rated_capacity;
  break;
 case 135:
  val->intval = di->full_active_uAh;
  break;
 case 136:
  val->intval = di->empty_uAh;
  break;
 case 133:
  val->intval = di->accum_current_uAh;
  break;
 case 130:
  val->intval = di->temp_C;
  break;
 case 129:
  val->intval = di->life_sec;
  break;
 case 137:
  val->intval = di->rem_capacity;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
