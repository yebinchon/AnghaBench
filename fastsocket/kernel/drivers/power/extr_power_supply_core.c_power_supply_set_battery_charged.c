
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {scalar_t__ type; int (* set_charged ) (struct power_supply*) ;} ;


 int EINVAL ;
 scalar_t__ POWER_SUPPLY_TYPE_BATTERY ;
 int stub1 (struct power_supply*) ;

int power_supply_set_battery_charged(struct power_supply *psy)
{
 if (psy->type == POWER_SUPPLY_TYPE_BATTERY && psy->set_charged) {
  psy->set_charged(psy);
  return 0;
 }

 return -EINVAL;
}
