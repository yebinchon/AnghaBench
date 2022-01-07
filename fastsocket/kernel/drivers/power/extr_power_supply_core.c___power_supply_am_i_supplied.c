
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int member_0; } ;
struct power_supply {int num_supplicants; scalar_t__ (* get_property ) (struct power_supply*,int ,union power_supply_propval*) ;int name; int * supplied_to; } ;
struct device {int dummy; } ;


 int POWER_SUPPLY_PROP_ONLINE ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int strcmp (int ,int ) ;
 scalar_t__ stub1 (struct power_supply*,int ,union power_supply_propval*) ;

__attribute__((used)) static int __power_supply_am_i_supplied(struct device *dev, void *data)
{
 union power_supply_propval ret = {0,};
 struct power_supply *psy = (struct power_supply *)data;
 struct power_supply *epsy = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < epsy->num_supplicants; i++) {
  if (!strcmp(epsy->supplied_to[i], psy->name)) {
   if (epsy->get_property(epsy,
      POWER_SUPPLY_PROP_ONLINE, &ret))
    continue;
   if (ret.intval)
    return ret.intval;
  }
 }
 return 0;
}
