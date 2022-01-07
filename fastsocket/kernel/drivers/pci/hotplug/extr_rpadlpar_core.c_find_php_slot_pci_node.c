
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (struct device_node*,char*) ;
 int rpaphp_get_drc_props (struct device_node*,int *,char**,char**,int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static struct device_node *find_php_slot_pci_node(char *drc_name,
        char *drc_type)
{
 struct device_node *np = ((void*)0);
 char *name;
 char *type;
 int rc;

 while ((np = of_find_node_by_name(np, "pci"))) {
  rc = rpaphp_get_drc_props(np, ((void*)0), &name, &type, ((void*)0));
  if (rc == 0)
   if (!strcmp(drc_name, name) && !strcmp(drc_type, type))
    break;
 }

 return np;
}
