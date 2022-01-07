
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addrlen; int dmi_addr; struct dev_mc_list* next; } ;
struct bonding {int flags; int lock; struct dev_mc_list* mc_list; } ;


 int GFP_ATOMIC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int bond_mc_add (struct bonding*,int ,int ) ;
 int bond_mc_delete (struct bonding*,int ,int ) ;
 int bond_mc_list_copy (struct dev_mc_list*,struct bonding*,int ) ;
 int bond_mc_list_destroy (struct bonding*) ;
 int bond_mc_list_find_dmi (struct dev_mc_list*,struct dev_mc_list*) ;
 int bond_set_allmulti (struct bonding*,int) ;
 int bond_set_promiscuity (struct bonding*,int) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void bond_set_multicast_list(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);
 struct dev_mc_list *dmi;




 if ((bond_dev->flags & IFF_PROMISC) && !(bond->flags & IFF_PROMISC))




  bond_set_promiscuity(bond, 1);


 if (!(bond_dev->flags & IFF_PROMISC) && (bond->flags & IFF_PROMISC))
  bond_set_promiscuity(bond, -1);



 if ((bond_dev->flags & IFF_ALLMULTI) && !(bond->flags & IFF_ALLMULTI))




  bond_set_allmulti(bond, 1);


 if (!(bond_dev->flags & IFF_ALLMULTI) && (bond->flags & IFF_ALLMULTI))
  bond_set_allmulti(bond, -1);


 read_lock(&bond->lock);

 bond->flags = bond_dev->flags;


 for (dmi = bond_dev->mc_list; dmi; dmi = dmi->next) {
  if (!bond_mc_list_find_dmi(dmi, bond->mc_list))
   bond_mc_add(bond, dmi->dmi_addr, dmi->dmi_addrlen);
 }


 for (dmi = bond->mc_list; dmi; dmi = dmi->next) {
  if (!bond_mc_list_find_dmi(dmi, bond_dev->mc_list))
   bond_mc_delete(bond, dmi->dmi_addr, dmi->dmi_addrlen);
 }


 bond_mc_list_destroy(bond);
 bond_mc_list_copy(bond_dev->mc_list, bond, GFP_ATOMIC);

 read_unlock(&bond->lock);
}
