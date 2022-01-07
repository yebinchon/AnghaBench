
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_mc_list {struct dev_mc_list* next; } ;
struct bonding {struct dev_mc_list* mc_list; } ;


 int kfree (struct dev_mc_list*) ;

__attribute__((used)) static void bond_mc_list_destroy(struct bonding *bond)
{
 struct dev_mc_list *dmi;

 dmi = bond->mc_list;
 while (dmi) {
  bond->mc_list = dmi->next;
  kfree(dmi);
  dmi = bond->mc_list;
 }

 bond->mc_list = ((void*)0);
}
