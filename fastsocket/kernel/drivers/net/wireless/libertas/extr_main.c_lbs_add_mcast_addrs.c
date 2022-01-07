
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int name; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
struct cmd_ds_mac_multicast_adr {int * maclist; } ;


 int EOVERFLOW ;
 int ETH_ALEN ;
 int IFF_MULTICAST ;
 int IFF_UP ;
 int MRVDRV_MAX_MULTICAST_LIST_SIZE ;
 int lbs_deb_net (char*,int ,int ) ;
 scalar_t__ mac_in_list (int *,int,int ) ;
 int memcpy (int *,int ,int ) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

__attribute__((used)) static int lbs_add_mcast_addrs(struct cmd_ds_mac_multicast_adr *cmd,
          struct net_device *dev, int nr_addrs)
{
 int i = nr_addrs;
 struct dev_mc_list *mc_list;

 if ((dev->flags & (IFF_UP|IFF_MULTICAST)) != (IFF_UP|IFF_MULTICAST))
  return nr_addrs;

 netif_addr_lock_bh(dev);
 for (mc_list = dev->mc_list; mc_list; mc_list = mc_list->next) {
  if (mac_in_list(cmd->maclist, nr_addrs, mc_list->dmi_addr)) {
   lbs_deb_net("mcast address %s:%pM skipped\n", dev->name,
        mc_list->dmi_addr);
   continue;
  }

  if (i == MRVDRV_MAX_MULTICAST_LIST_SIZE)
   break;
  memcpy(&cmd->maclist[6*i], mc_list->dmi_addr, ETH_ALEN);
  lbs_deb_net("mcast address %s:%pM added to filter\n", dev->name,
       mc_list->dmi_addr);
  i++;
 }
 netif_addr_unlock_bh(dev);
 if (mc_list)
  return -EOVERFLOW;

 return i;
}
