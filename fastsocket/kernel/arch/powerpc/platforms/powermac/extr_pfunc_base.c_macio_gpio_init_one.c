
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct macio_chip {struct device_node* of_node; scalar_t__ base; } ;
struct device_node {int full_name; int name; } ;


 int DBG (char*,int ) ;
 int PMF_FLAGS_ON_INIT ;
 int macio_gpio_handlers ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 unsigned long* of_get_property (struct device_node*,char*,int *) ;
 int pmf_do_functions (struct device_node*,int *,int ,int ,int *) ;
 int pmf_register_driver (struct device_node*,int *,void*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void macio_gpio_init_one(struct macio_chip *macio)
{
 struct device_node *gparent, *gp;





 for (gparent = ((void*)0);
      (gparent = of_get_next_child(macio->of_node, gparent)) != ((void*)0);)
  if (strcmp(gparent->name, "gpio") == 0)
   break;
 if (gparent == ((void*)0))
  return;

 DBG("Installing GPIO functions for macio %s\n",
     macio->of_node->full_name);





 for (gp = ((void*)0); (gp = of_get_next_child(gparent, gp)) != ((void*)0);) {
  const u32 *reg = of_get_property(gp, "reg", ((void*)0));
  unsigned long offset;
  if (reg == ((void*)0))
   continue;
  offset = *reg;



  if (offset < 0x50)
   offset += 0x50;
  offset += (unsigned long)macio->base;
  pmf_register_driver(gp, &macio_gpio_handlers, (void *)offset);
 }

 DBG("Calling initial GPIO functions for macio %s\n",
     macio->of_node->full_name);


 for (gp = ((void*)0); (gp = of_get_next_child(gparent, gp)) != ((void*)0);)
  pmf_do_functions(gp, ((void*)0), 0, PMF_FLAGS_ON_INIT, ((void*)0));




}
