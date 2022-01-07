
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int rpaphp_get_drc_props (struct device_node*,int *,char**,int *,int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static struct device_node *find_vio_slot_node(char *drc_name)
{
 struct device_node *parent = of_find_node_by_name(((void*)0), "vdevice");
 struct device_node *dn = ((void*)0);
 char *name;
 int rc;

 if (!parent)
  return ((void*)0);

 while ((dn = of_get_next_child(parent, dn))) {
  rc = rpaphp_get_drc_props(dn, ((void*)0), &name, ((void*)0), ((void*)0));
  if ((rc == 0) && (!strcmp(drc_name, name)))
   break;
 }

 return dn;
}
