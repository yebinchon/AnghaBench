
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int charging_full_trig_name; int charging_trig_name; int full_trig_name; int full_trig; int charging_trig; int charging_full_trig; } ;


 int kfree (int ) ;
 int led_trigger_unregister_simple (int ) ;

__attribute__((used)) static void power_supply_remove_bat_triggers(struct power_supply *psy)
{
 led_trigger_unregister_simple(psy->charging_full_trig);
 led_trigger_unregister_simple(psy->charging_trig);
 led_trigger_unregister_simple(psy->full_trig);
 kfree(psy->full_trig_name);
 kfree(psy->charging_trig_name);
 kfree(psy->charging_full_trig_name);
}
