
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int num_supplicants; int (* external_power_changed ) (struct power_supply*) ;int name; int * supplied_to; } ;
struct device {int dummy; } ;


 struct power_supply* dev_get_drvdata (struct device*) ;
 int strcmp (int ,int ) ;
 int stub1 (struct power_supply*) ;

__attribute__((used)) static int __power_supply_changed_work(struct device *dev, void *data)
{
 struct power_supply *psy = (struct power_supply *)data;
 struct power_supply *pst = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < psy->num_supplicants; i++)
  if (!strcmp(psy->supplied_to[i], pst->name)) {
   if (pst->external_power_changed)
    pst->external_power_changed(pst);
  }
 return 0;
}
