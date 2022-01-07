
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int num_properties; size_t* properties; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int * power_supply_attrs ;
 int * power_supply_static_attrs ;

int power_supply_create_attrs(struct power_supply *psy)
{
 int rc = 0;
 int i, j;

 for (i = 0; i < ARRAY_SIZE(power_supply_static_attrs); i++) {
  rc = device_create_file(psy->dev,
       &power_supply_static_attrs[i]);
  if (rc)
   goto statics_failed;
 }

 for (j = 0; j < psy->num_properties; j++) {
  rc = device_create_file(psy->dev,
       &power_supply_attrs[psy->properties[j]]);
  if (rc)
   goto dynamics_failed;
 }

 goto succeed;

dynamics_failed:
 while (j--)
  device_remove_file(psy->dev,
      &power_supply_attrs[psy->properties[j]]);
statics_failed:
 while (i--)
  device_remove_file(psy->dev, &power_supply_static_attrs[i]);
succeed:
 return rc;
}
