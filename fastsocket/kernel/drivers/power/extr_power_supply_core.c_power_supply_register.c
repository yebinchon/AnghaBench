
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dev; int changed_work; int name; } ;
struct device {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int device_create (int ,struct device*,int ,struct power_supply*,char*,int ) ;
 int device_unregister (int ) ;
 int power_supply_changed (struct power_supply*) ;
 int power_supply_changed_work ;
 int power_supply_class ;
 int power_supply_create_attrs (struct power_supply*) ;
 int power_supply_create_triggers (struct power_supply*) ;
 int power_supply_remove_attrs (struct power_supply*) ;

int power_supply_register(struct device *parent, struct power_supply *psy)
{
 int rc = 0;

 psy->dev = device_create(power_supply_class, parent, 0, psy,
     "%s", psy->name);
 if (IS_ERR(psy->dev)) {
  rc = PTR_ERR(psy->dev);
  goto dev_create_failed;
 }

 INIT_WORK(&psy->changed_work, power_supply_changed_work);

 rc = power_supply_create_attrs(psy);
 if (rc)
  goto create_attrs_failed;

 rc = power_supply_create_triggers(psy);
 if (rc)
  goto create_triggers_failed;

 power_supply_changed(psy);

 goto success;

create_triggers_failed:
 power_supply_remove_attrs(psy);
create_attrs_failed:
 device_unregister(psy->dev);
dev_create_failed:
success:
 return rc;
}
