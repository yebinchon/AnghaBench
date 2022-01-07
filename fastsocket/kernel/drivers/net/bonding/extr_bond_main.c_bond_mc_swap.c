
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {int dev; } ;
struct dev_mc_list {int dmi_addrlen; int dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_3__ {int mode; } ;
struct bonding {TYPE_2__* dev; TYPE_1__ params; } ;
struct TYPE_4__ {int flags; struct dev_mc_list* mc_list; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int USES_PRIMARY (int ) ;
 int dev_mc_add (int ,int ,int ,int ) ;
 int dev_mc_delete (int ,int ,int ,int ) ;
 int dev_set_allmulti (int ,int) ;
 int dev_set_promiscuity (int ,int) ;

__attribute__((used)) static void bond_mc_swap(struct bonding *bond, struct slave *new_active,
    struct slave *old_active)
{
 struct dev_mc_list *dmi;

 if (!USES_PRIMARY(bond->params.mode))



  return;

 if (old_active) {
  if (bond->dev->flags & IFF_PROMISC)
   dev_set_promiscuity(old_active->dev, -1);

  if (bond->dev->flags & IFF_ALLMULTI)
   dev_set_allmulti(old_active->dev, -1);

  for (dmi = bond->dev->mc_list; dmi; dmi = dmi->next)
   dev_mc_delete(old_active->dev, dmi->dmi_addr,
          dmi->dmi_addrlen, 0);
 }

 if (new_active) {

  if (bond->dev->flags & IFF_PROMISC)
   dev_set_promiscuity(new_active->dev, 1);

  if (bond->dev->flags & IFF_ALLMULTI)
   dev_set_allmulti(new_active->dev, 1);

  for (dmi = bond->dev->mc_list; dmi; dmi = dmi->next)
   dev_mc_add(new_active->dev, dmi->dmi_addr,
       dmi->dmi_addrlen, 0);
 }
}
