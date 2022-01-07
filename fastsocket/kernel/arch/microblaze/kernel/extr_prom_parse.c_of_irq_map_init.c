
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int name; } ;


 unsigned int OF_IMAP_NO_PHANDLE ;
 unsigned int OF_IMAP_OLDWORLD_MAC ;
 struct device_node* of_find_all_nodes (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* of_irq_dflt_pic ;
 unsigned int of_irq_workarounds ;
 scalar_t__ strcmp (int ,char*) ;

void of_irq_map_init(unsigned int flags)
{
 of_irq_workarounds = flags;


 if (flags & OF_IMAP_OLDWORLD_MAC)
  return;






 if (flags & OF_IMAP_NO_PHANDLE) {
  struct device_node *np;

  for (np = ((void*)0); (np = of_find_all_nodes(np)) != ((void*)0);) {
   if (of_get_property(np, "interrupt-controller", ((void*)0))
    == ((void*)0))
    continue;

   if (strcmp(np->name, "chosen") == 0)
    continue;





   if (strcmp(np->name, "AppleKiwi") == 0)
    continue;

   of_irq_dflt_pic = np;
   break;
  }
 }

}
