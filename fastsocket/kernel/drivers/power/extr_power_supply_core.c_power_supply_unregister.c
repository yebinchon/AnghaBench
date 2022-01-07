
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dev; } ;


 int device_unregister (int ) ;
 int flush_scheduled_work () ;
 int power_supply_remove_attrs (struct power_supply*) ;
 int power_supply_remove_triggers (struct power_supply*) ;

void power_supply_unregister(struct power_supply *psy)
{
 flush_scheduled_work();
 power_supply_remove_triggers(psy);
 power_supply_remove_attrs(psy);
 device_unregister(psy->dev);
}
