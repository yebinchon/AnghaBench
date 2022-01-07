
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {scalar_t__ value; } ;
struct device_node {int dummy; } ;


 struct property* of_find_property (struct device_node*,char const*,int*) ;

int of_getintprop_default(struct device_node *np, const char *name, int def)
{
 struct property *prop;
 int len;

 prop = of_find_property(np, name, &len);
 if (!prop || len != 4)
  return def;

 return *(int *) prop->value;
}
