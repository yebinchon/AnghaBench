
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * external_power_changed; int get_property; int num_properties; int properties; int type; } ;
struct bq27x00_device_info {TYPE_1__ bat; } ;


 int ARRAY_SIZE (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int bq27x00_battery_get_property ;
 int bq27x00_battery_props ;

__attribute__((used)) static void bq27x00_powersupply_init(struct bq27x00_device_info *di)
{
 di->bat.type = POWER_SUPPLY_TYPE_BATTERY;
 di->bat.properties = bq27x00_battery_props;
 di->bat.num_properties = ARRAY_SIZE(bq27x00_battery_props);
 di->bat.get_property = bq27x00_battery_get_property;
 di->bat.external_power_changed = ((void*)0);
}
