
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int restart_queue; } ;
struct igb_ring {TYPE_1__ tx_stats; int queue_index; struct net_device* netdev; } ;


 int EBUSY ;
 scalar_t__ const igb_desc_unused (struct igb_ring*) ;
 int netif_stop_subqueue (struct net_device*,int ) ;
 int netif_wake_subqueue (struct net_device*,int ) ;
 int smp_mb () ;

__attribute__((used)) static int __igb_maybe_stop_tx(struct igb_ring *tx_ring, const u16 size)
{
 struct net_device *netdev = tx_ring->netdev;

 netif_stop_subqueue(netdev, tx_ring->queue_index);





 smp_mb();




 if (igb_desc_unused(tx_ring) < size)
  return -EBUSY;


 netif_wake_subqueue(netdev, tx_ring->queue_index);
 tx_ring->tx_stats.restart_queue++;
 return 0;
}
