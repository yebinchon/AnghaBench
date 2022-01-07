
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int NOTIFY_BAD ;
 int PSERIES_DRCONF_MEM_ADD ;
 int PSERIES_DRCONF_MEM_REMOVE ;
 int blocking_notifier_call_chain (int *,int,unsigned char*) ;
 struct property* new_property (char*,int,unsigned char*,int *) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 int pSeries_reconfig_chain ;
 char* parse_next_property (char*,char*,char**,int*,unsigned char**) ;
 char* parse_node (char*,size_t,struct device_node**) ;
 int prom_add_property (struct device_node*,struct property*) ;
 int prom_update_property (struct device_node*,struct property*,struct property*) ;
 int slb_set_size (int) ;
 int strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int do_update_property(char *buf, size_t bufsize)
{
 struct device_node *np;
 unsigned char *value;
 char *name, *end, *next_prop;
 int rc, length;
 struct property *newprop, *oldprop;
 buf = parse_node(buf, bufsize, &np);
 end = buf + bufsize;

 if (!np)
  return -ENODEV;

 next_prop = parse_next_property(buf, end, &name, &length, &value);
 if (!next_prop)
  return -EINVAL;

 newprop = new_property(name, length, value, ((void*)0));
 if (!newprop)
  return -ENOMEM;

 if (!strcmp(name, "slb-size") || !strcmp(name, "ibm,slb-size"))
  slb_set_size(*(int *)value);

 oldprop = of_find_property(np, name,((void*)0));
 if (!oldprop) {
  if (strlen(name))
   return prom_add_property(np, newprop);
  return -ENODEV;
 }

 rc = prom_update_property(np, newprop, oldprop);
 if (rc)
  return rc;







 if (!strcmp(name, "ibm,dynamic-memory")) {
  int action;

  next_prop = parse_next_property(next_prop, end, &name,
      &length, &value);
  if (!next_prop)
   return -EINVAL;

  if (!strcmp(name, "add"))
   action = PSERIES_DRCONF_MEM_ADD;
  else
   action = PSERIES_DRCONF_MEM_REMOVE;

  rc = blocking_notifier_call_chain(&pSeries_reconfig_chain,
        action, value);
  if (rc == NOTIFY_BAD) {
   rc = prom_update_property(np, oldprop, newprop);
   return -ENOMEM;
  }
 }

 return 0;
}
