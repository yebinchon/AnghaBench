
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct ks_net {int mcast_lst_size; int * mcast_lst; } ;
struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;


 int IFF_ALLMULTI ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 int MAC_ADDR_LEN ;
 int MAX_MCAST_LST ;
 int ks_clear_mcast (struct ks_net*) ;
 int ks_set_grpaddr (struct ks_net*) ;
 int ks_set_mcast (struct ks_net*,int) ;
 int ks_set_promis (struct ks_net*,int) ;
 int memcpy (int ,int*,int ) ;
 struct ks_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ks_set_rx_mode(struct net_device *netdev)
{
 struct ks_net *ks = netdev_priv(netdev);
 struct dev_mc_list *ptr;


 if ((netdev->flags & IFF_PROMISC) == IFF_PROMISC)
  ks_set_promis(ks,
   (u16)((netdev->flags & IFF_PROMISC) == IFF_PROMISC));

 else if ((netdev->flags & IFF_ALLMULTI) == IFF_ALLMULTI)
  ks_set_mcast(ks,
   (u16)((netdev->flags & IFF_ALLMULTI) == IFF_ALLMULTI));
 else
  ks_set_promis(ks, 0);

 if ((netdev->flags & IFF_MULTICAST) && netdev->mc_count) {
  if (netdev->mc_count <= MAX_MCAST_LST) {
   int i = 0;
   for (ptr = netdev->mc_list; ptr; ptr = ptr->next) {
    if (!(*ptr->dmi_addr & 1))
     continue;
    if (i >= MAX_MCAST_LST)
     break;
    memcpy(ks->mcast_lst[i++], ptr->dmi_addr,
    MAC_ADDR_LEN);
   }
   ks->mcast_lst_size = (u8)i;
   ks_set_grpaddr(ks);
  } else {




   ks->mcast_lst_size = MAX_MCAST_LST;
   ks_set_mcast(ks, 1);
  }
 } else {
  ks->mcast_lst_size = 0;
  ks_clear_mcast(ks);
 }
}
