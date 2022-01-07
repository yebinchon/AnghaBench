
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct i596_rbd {int * skb; int b_data; } ;
struct i596_private {TYPE_1__* dma; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct i596_rbd* rbds; } ;


 int DMA_FROM_DEVICE ;
 int PKT_BUF_SZ ;
 scalar_t__ SWAP32 (int ) ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 struct i596_private* netdev_priv (struct net_device*) ;
 int rx_ring_size ;

__attribute__((used)) static inline void remove_rx_bufs(struct net_device *dev)
{
 struct i596_private *lp = netdev_priv(dev);
 struct i596_rbd *rbd;
 int i;

 for (i = 0, rbd = lp->dma->rbds; i < rx_ring_size; i++, rbd++) {
  if (rbd->skb == ((void*)0))
   break;
  dma_unmap_single(dev->dev.parent,
     (dma_addr_t)SWAP32(rbd->b_data),
     PKT_BUF_SZ, DMA_FROM_DEVICE);
  dev_kfree_skb(rbd->skb);
 }
}
