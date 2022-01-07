
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_info {int use_for_apm; int name; } ;
struct power_supply {int num_properties; int properties; int get_property; int type; int use_for_apm; int name; } ;
struct da9030_charger {struct power_supply_info* battery_info; struct power_supply psy; } ;


 int ARRAY_SIZE (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int da9030_battery_get_property ;
 int da9030_battery_props ;

__attribute__((used)) static void da9030_battery_setup_psy(struct da9030_charger *charger)
{
 struct power_supply *psy = &charger->psy;
 struct power_supply_info *info = charger->battery_info;

 psy->name = info->name;
 psy->use_for_apm = info->use_for_apm;
 psy->type = POWER_SUPPLY_TYPE_BATTERY;
 psy->get_property = da9030_battery_get_property;

 psy->properties = da9030_battery_props;
 psy->num_properties = ARRAY_SIZE(da9030_battery_props);
}
