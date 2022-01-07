
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int ring_dma; int rx_ring; int pci_dev; } ;
struct netdev_desc {int dummy; } ;
struct net_device {int dummy; } ;


 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (int ,int,int ,int ) ;

__attribute__((used)) static void free_ring(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 pci_free_consistent(np->pci_dev,
  sizeof(struct netdev_desc) * (RX_RING_SIZE+TX_RING_SIZE),
  np->rx_ring, np->ring_dma);
}
