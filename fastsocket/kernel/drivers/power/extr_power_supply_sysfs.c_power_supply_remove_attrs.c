
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int num_properties; size_t* properties; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int device_remove_file (int ,int *) ;
 int * power_supply_attrs ;
 int * power_supply_static_attrs ;

void power_supply_remove_attrs(struct power_supply *psy)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(power_supply_static_attrs); i++)
  device_remove_file(psy->dev, &power_supply_static_attrs[i]);

 for (i = 0; i < psy->num_properties; i++)
  device_remove_file(psy->dev,
       &power_supply_attrs[psy->properties[i]]);
}
