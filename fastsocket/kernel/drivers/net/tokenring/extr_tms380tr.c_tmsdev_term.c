
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int dmabuffer; int pdev; } ;
struct net_device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_single (int ,int ,int,int ) ;
 struct net_local* netdev_priv (struct net_device*) ;

void tmsdev_term(struct net_device *dev)
{
 struct net_local *tp;

 tp = netdev_priv(dev);
 dma_unmap_single(tp->pdev, tp->dmabuffer, sizeof(struct net_local),
  DMA_BIDIRECTIONAL);
}
