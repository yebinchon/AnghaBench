
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int full_name; int name; } ;


 int DBG (char*,int ) ;
 int PMF_FLAGS_ON_INIT ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int pmf_do_functions (struct device_node*,int *,int ,int ,int *) ;
 int pmf_register_driver (struct device_node*,int *,int *) ;
 scalar_t__ strcmp (int ,char*) ;
 struct device_node* unin_hwclock ;
 int unin_mmio_handlers ;
 struct device_node* uninorth_node ;

__attribute__((used)) static void uninorth_install_pfunc(void)
{
 struct device_node *np;

 DBG("Installing functions for UniN %s\n",
     uninorth_node->full_name);




 pmf_register_driver(uninorth_node, &unin_mmio_handlers, ((void*)0));
 pmf_do_functions(uninorth_node, ((void*)0), 0, PMF_FLAGS_ON_INIT, ((void*)0));





 for (np = ((void*)0); (np = of_get_next_child(uninorth_node, np)) != ((void*)0);)
  if (strcmp(np->name, "hw-clock") == 0) {
   unin_hwclock = np;
   break;
  }
 if (unin_hwclock) {
  DBG("Installing functions for UniN clock %s\n",
      unin_hwclock->full_name);
  pmf_register_driver(unin_hwclock, &unin_mmio_handlers, ((void*)0));
  pmf_do_functions(unin_hwclock, ((void*)0), 0, PMF_FLAGS_ON_INIT,
     ((void*)0));
 }
}
