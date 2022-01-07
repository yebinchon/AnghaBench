
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int* of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static int get_children_props(struct device_node *dn, const int **drc_indexes,
  const int **drc_names, const int **drc_types,
  const int **drc_power_domains)
{
 const int *indexes, *names, *types, *domains;

 indexes = of_get_property(dn, "ibm,drc-indexes", ((void*)0));
 names = of_get_property(dn, "ibm,drc-names", ((void*)0));
 types = of_get_property(dn, "ibm,drc-types", ((void*)0));
 domains = of_get_property(dn, "ibm,drc-power-domains", ((void*)0));

 if (!indexes || !names || !types || !domains) {

  return -EINVAL;
 }
 if (drc_indexes)
  *drc_indexes = indexes;
 if (drc_names)

  *drc_names = names;
 if (drc_types)

  *drc_types = types;
 if (drc_power_domains)
  *drc_power_domains = domains;

 return 0;
}
