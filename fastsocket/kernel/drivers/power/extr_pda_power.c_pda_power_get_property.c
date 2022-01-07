
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int type; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* is_usb_online ) () ;int (* is_ac_online ) () ;} ;


 int EINVAL ;

 int POWER_SUPPLY_TYPE_MAINS ;
 TYPE_1__* pdata ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static int pda_power_get_property(struct power_supply *psy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 switch (psp) {
 case 128:
  if (psy->type == POWER_SUPPLY_TYPE_MAINS)
   val->intval = pdata->is_ac_online ?
          pdata->is_ac_online() : 0;
  else
   val->intval = pdata->is_usb_online ?
          pdata->is_usb_online() : 0;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
