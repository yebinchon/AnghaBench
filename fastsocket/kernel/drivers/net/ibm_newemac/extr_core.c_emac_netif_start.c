
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {int commac; int mal; int ndev; scalar_t__ mcast_pending; scalar_t__ no_mcast; } ;


 int __emac_set_multicast_list (struct emac_instance*) ;
 int mal_poll_enable (int ,int *) ;
 int netif_addr_lock (int ) ;
 int netif_addr_unlock (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static inline void emac_netif_start(struct emac_instance *dev)
{
 netif_tx_lock_bh(dev->ndev);
 netif_addr_lock(dev->ndev);
 dev->no_mcast = 0;
 if (dev->mcast_pending && netif_running(dev->ndev))
  __emac_set_multicast_list(dev);
 netif_addr_unlock(dev->ndev);
 netif_tx_unlock_bh(dev->ndev);

 netif_wake_queue(dev->ndev);






 mal_poll_enable(dev->mal, &dev->commac);
}
