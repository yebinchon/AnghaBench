
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int cur_task; int cur_tx; scalar_t__ base; scalar_t__ tx_ring_dma; struct netdev_desc* last_tx; struct netdev_desc* tx_ring; } ;
struct netdev_desc {int status; int next_desc; } ;
struct net_device {int dummy; } ;


 scalar_t__ DescIntrOnTx ;
 int TX_RING_SIZE ;
 scalar_t__ TxListPtr ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tx_poll (unsigned long data)
{
 struct net_device *dev = (struct net_device *)data;
 struct netdev_private *np = netdev_priv(dev);
 unsigned head = np->cur_task % TX_RING_SIZE;
 struct netdev_desc *txdesc =
  &np->tx_ring[(np->cur_tx - 1) % TX_RING_SIZE];


 for (; np->cur_tx - np->cur_task > 0; np->cur_task++) {
  int entry = np->cur_task % TX_RING_SIZE;
  txdesc = &np->tx_ring[entry];
  if (np->last_tx) {
   np->last_tx->next_desc = cpu_to_le32(np->tx_ring_dma +
    entry*sizeof(struct netdev_desc));
  }
  np->last_tx = txdesc;
 }

 txdesc->status |= cpu_to_le32(DescIntrOnTx);

 if (ioread32 (np->base + TxListPtr) == 0)
  iowrite32 (np->tx_ring_dma + head * sizeof(struct netdev_desc),
   np->base + TxListPtr);
 return;
}
