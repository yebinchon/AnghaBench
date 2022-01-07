
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct ds2782_info {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;





 int ds2782_get_capacity (struct ds2782_info*,int *) ;
 int ds2782_get_current (struct ds2782_info*,int *) ;
 int ds2782_get_status (struct ds2782_info*,int *) ;
 int ds2782_get_temp (struct ds2782_info*,int *) ;
 int ds2782_get_voltage (struct ds2782_info*,int *) ;
 struct ds2782_info* to_ds2782_info (struct power_supply*) ;

__attribute__((used)) static int ds2782_battery_get_property(struct power_supply *psy,
           enum power_supply_property prop,
           union power_supply_propval *val)
{
 struct ds2782_info *info = to_ds2782_info(psy);
 int ret;

 switch (prop) {
 case 130:
  ret = ds2782_get_status(info, &val->intval);
  break;

 case 132:
  ret = ds2782_get_capacity(info, &val->intval);
  break;

 case 128:
  ret = ds2782_get_voltage(info, &val->intval);
  break;

 case 131:
  ret = ds2782_get_current(info, &val->intval);
  break;

 case 129:
  ret = ds2782_get_temp(info, &val->intval);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
