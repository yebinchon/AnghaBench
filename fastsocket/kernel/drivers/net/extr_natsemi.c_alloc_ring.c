
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int * rx_ring; int * tx_ring; int ring_dma; int pci_dev; } ;
struct netdev_desc {int dummy; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int * pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int alloc_ring(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 np->rx_ring = pci_alloc_consistent(np->pci_dev,
  sizeof(struct netdev_desc) * (RX_RING_SIZE+TX_RING_SIZE),
  &np->ring_dma);
 if (!np->rx_ring)
  return -ENOMEM;
 np->tx_ring = &np->rx_ring[RX_RING_SIZE];
 return 0;
}
