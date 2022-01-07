
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* parent; int name; } ;


 int * of_find_property (struct device_node*,char*,int *) ;
 int strcmp (int ,char*) ;

int of_bus_sbus_match(struct device_node *np)
{
 struct device_node *dp = np;

 while (dp) {
  if (!strcmp(dp->name, "sbus") ||
      !strcmp(dp->name, "sbi"))
   return 1;






  if (of_find_property(dp, "ranges", ((void*)0)) != ((void*)0))
   break;

  dp = dp->parent;
 }

 return 0;
}
