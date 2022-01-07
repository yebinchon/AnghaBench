
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {scalar_t__ type; } ;


 scalar_t__ POWER_SUPPLY_TYPE_BATTERY ;
 int power_supply_create_bat_triggers (struct power_supply*) ;
 int power_supply_create_gen_triggers (struct power_supply*) ;

int power_supply_create_triggers(struct power_supply *psy)
{
 if (psy->type == POWER_SUPPLY_TYPE_BATTERY)
  return power_supply_create_bat_triggers(psy);
 return power_supply_create_gen_triggers(psy);
}
