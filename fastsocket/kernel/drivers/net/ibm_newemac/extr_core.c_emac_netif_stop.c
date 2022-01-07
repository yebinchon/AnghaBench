
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct emac_instance {int no_mcast; TYPE_1__* ndev; int commac; int mal; } ;
struct TYPE_6__ {int trans_start; } ;


 int jiffies ;
 int mal_poll_disable (int ,int *) ;
 int netif_addr_lock (TYPE_1__*) ;
 int netif_addr_unlock (TYPE_1__*) ;
 int netif_tx_disable (TYPE_1__*) ;
 int netif_tx_lock_bh (TYPE_1__*) ;
 int netif_tx_unlock_bh (TYPE_1__*) ;

__attribute__((used)) static inline void emac_netif_stop(struct emac_instance *dev)
{
 netif_tx_lock_bh(dev->ndev);
 netif_addr_lock(dev->ndev);
 dev->no_mcast = 1;
 netif_addr_unlock(dev->ndev);
 netif_tx_unlock_bh(dev->ndev);
 dev->ndev->trans_start = jiffies;
 mal_poll_disable(dev->mal, &dev->commac);
 netif_tx_disable(dev->ndev);
}
