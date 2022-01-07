
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_mc_list {struct dev_mc_list* next; } ;


 scalar_t__ bond_is_dmi_same (struct dev_mc_list*,struct dev_mc_list*) ;

__attribute__((used)) static struct dev_mc_list *bond_mc_list_find_dmi(struct dev_mc_list *dmi,
       struct dev_mc_list *mc_list)
{
 struct dev_mc_list *idmi;

 for (idmi = mc_list; idmi; idmi = idmi->next) {
  if (bond_is_dmi_same(dmi, idmi))
   return idmi;
 }

 return ((void*)0);
}
