
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int type; } ;


 int of_find_property (struct device_node*,char*,int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int of_bus_pci_match(struct device_node *np)
{
 if (!strcmp(np->type, "pci") || !strcmp(np->type, "pciex")) {






  if (!of_find_property(np, "ranges", ((void*)0)))
   return 0;

  return 1;
 }

 return 0;
}
