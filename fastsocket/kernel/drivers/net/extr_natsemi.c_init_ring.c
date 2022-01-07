
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_private {int cur_rx; int ** rx_skbuff; TYPE_2__* rx_ring; scalar_t__ ring_dma; TYPE_2__* rx_head_desc; scalar_t__ oom; scalar_t__ dirty_rx; TYPE_1__* tx_ring; int ** tx_skbuff; scalar_t__ cur_tx; scalar_t__ dirty_tx; } ;
struct netdev_desc {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {void* cmd_status; void* next_desc; } ;
struct TYPE_3__ {scalar_t__ cmd_status; void* next_desc; } ;


 scalar_t__ DescOwn ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 void* cpu_to_le32 (scalar_t__) ;
 int dump_ring (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int refill_rx (struct net_device*) ;
 int set_bufsize (struct net_device*) ;

__attribute__((used)) static void init_ring(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int i;


 np->dirty_tx = np->cur_tx = 0;
 for (i = 0; i < TX_RING_SIZE; i++) {
  np->tx_skbuff[i] = ((void*)0);
  np->tx_ring[i].next_desc = cpu_to_le32(np->ring_dma
   +sizeof(struct netdev_desc)
   *((i+1)%TX_RING_SIZE+RX_RING_SIZE));
  np->tx_ring[i].cmd_status = 0;
 }


 np->dirty_rx = 0;
 np->cur_rx = RX_RING_SIZE;
 np->oom = 0;
 set_bufsize(dev);

 np->rx_head_desc = &np->rx_ring[0];





 for (i = 0; i < RX_RING_SIZE; i++) {
  np->rx_ring[i].next_desc = cpu_to_le32(np->ring_dma
    +sizeof(struct netdev_desc)
    *((i+1)%RX_RING_SIZE));
  np->rx_ring[i].cmd_status = cpu_to_le32(DescOwn);
  np->rx_skbuff[i] = ((void*)0);
 }
 refill_rx(dev);
 dump_ring(dev);
}
