
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int flags; } ;
struct bnad {int cfg_flags; int bna_lock; TYPE_1__* rx_info; } ;
struct TYPE_2__ {int * rx; } ;


 int BNAD_CF_ALLMULTI ;
 int BNAD_CF_PROMISC ;
 int BNAD_RXMODE_PROMISC_DEFAULT ;
 int BNA_RXMODE_ALLMULTI ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int bna_rx_mcast_listset (int *,int,int *,int *) ;
 int bna_rx_mode_set (int *,int ,int ,int *) ;
 int * bnad_bcast_addr ;
 int bnad_netdev_mc_list_get (struct net_device*,int *) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int netdev_mc_count (struct net_device*) ;
 int netdev_mc_empty (struct net_device*) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
bnad_set_rx_mode(struct net_device *netdev)
{
 struct bnad *bnad = netdev_priv(netdev);
 u32 new_mask, valid_mask;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);

 new_mask = valid_mask = 0;

 if (netdev->flags & IFF_PROMISC) {
  if (!(bnad->cfg_flags & BNAD_CF_PROMISC)) {
   new_mask = BNAD_RXMODE_PROMISC_DEFAULT;
   valid_mask = BNAD_RXMODE_PROMISC_DEFAULT;
   bnad->cfg_flags |= BNAD_CF_PROMISC;
  }
 } else {
  if (bnad->cfg_flags & BNAD_CF_PROMISC) {
   new_mask = ~BNAD_RXMODE_PROMISC_DEFAULT;
   valid_mask = BNAD_RXMODE_PROMISC_DEFAULT;
   bnad->cfg_flags &= ~BNAD_CF_PROMISC;
  }
 }

 if (netdev->flags & IFF_ALLMULTI) {
  if (!(bnad->cfg_flags & BNAD_CF_ALLMULTI)) {
   new_mask |= BNA_RXMODE_ALLMULTI;
   valid_mask |= BNA_RXMODE_ALLMULTI;
   bnad->cfg_flags |= BNAD_CF_ALLMULTI;
  }
 } else {
  if (bnad->cfg_flags & BNAD_CF_ALLMULTI) {
   new_mask &= ~BNA_RXMODE_ALLMULTI;
   valid_mask |= BNA_RXMODE_ALLMULTI;
   bnad->cfg_flags &= ~BNAD_CF_ALLMULTI;
  }
 }

 if (bnad->rx_info[0].rx == ((void*)0))
  goto unlock;

 bna_rx_mode_set(bnad->rx_info[0].rx, new_mask, valid_mask, ((void*)0));

 if (!netdev_mc_empty(netdev)) {
  u8 *mcaddr_list;
  int mc_count = netdev_mc_count(netdev);


  mcaddr_list =
   kzalloc((mc_count + 1) * ETH_ALEN,
    GFP_ATOMIC);
  if (!mcaddr_list)
   goto unlock;

  memcpy(&mcaddr_list[0], &bnad_bcast_addr[0], ETH_ALEN);


  bnad_netdev_mc_list_get(netdev, mcaddr_list);

  bna_rx_mcast_listset(bnad->rx_info[0].rx, mc_count + 1,
     mcaddr_list, ((void*)0));


  kfree(mcaddr_list);
 }
unlock:
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
