
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {char const* name; } ;


 int of_find_property (struct device_node*,char*,int *) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int of_bus_pci_match(struct device_node *np)
{
 if (!strcmp(np->name, "pci")) {
  const char *model = of_get_property(np, "model", ((void*)0));

  if (model && !strcmp(model, "SUNW,simba"))
   return 0;







  if (!of_find_property(np, "ranges", ((void*)0)))
   return 0;

  return 1;
 }

 return 0;
}
