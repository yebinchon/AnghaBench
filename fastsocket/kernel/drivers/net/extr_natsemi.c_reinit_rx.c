
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_private {int cur_rx; TYPE_1__* rx_ring; TYPE_1__* rx_head_desc; scalar_t__ dirty_rx; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cmd_status; } ;


 int DescOwn ;
 int RX_RING_SIZE ;
 int cpu_to_le32 (int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int refill_rx (struct net_device*) ;

__attribute__((used)) static void reinit_rx(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int i;


 np->dirty_rx = 0;
 np->cur_rx = RX_RING_SIZE;
 np->rx_head_desc = &np->rx_ring[0];

 for (i = 0; i < RX_RING_SIZE; i++)
  np->rx_ring[i].cmd_status = cpu_to_le32(DescOwn);

 refill_rx(dev);
}
