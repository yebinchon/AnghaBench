
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int ,int *,char*,int ) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int power_supply_class ;
 int power_supply_match_device_by_name ;

struct power_supply *power_supply_get_by_name(char *name)
{
 struct device *dev = class_find_device(power_supply_class, ((void*)0), name,
     power_supply_match_device_by_name);

 return dev ? dev_get_drvdata(dev) : ((void*)0);
}
