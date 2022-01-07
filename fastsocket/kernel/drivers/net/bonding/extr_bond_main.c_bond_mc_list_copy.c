
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_mc_list {int dmi_gusers; int dmi_users; int dmi_addrlen; int dmi_addr; struct dev_mc_list* next; } ;
struct bonding {struct dev_mc_list* mc_list; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct dev_mc_list* kmalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int bond_mc_list_copy(struct dev_mc_list *mc_list, struct bonding *bond,
        gfp_t gfp_flag)
{
 struct dev_mc_list *dmi, *new_dmi;

 for (dmi = mc_list; dmi; dmi = dmi->next) {
  new_dmi = kmalloc(sizeof(struct dev_mc_list), gfp_flag);

  if (!new_dmi) {

   return -ENOMEM;
  }

  new_dmi->next = bond->mc_list;
  bond->mc_list = new_dmi;
  new_dmi->dmi_addrlen = dmi->dmi_addrlen;
  memcpy(new_dmi->dmi_addr, dmi->dmi_addr, dmi->dmi_addrlen);
  new_dmi->dmi_users = dmi->dmi_users;
  new_dmi->dmi_gusers = dmi->dmi_gusers;
 }

 return 0;
}
