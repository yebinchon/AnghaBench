
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w840_tx_desc {int dummy; } ;
struct w840_rx_desc {int dummy; } ;
struct netdev_private {int ring_dma_addr; int rx_ring; int pci_dev; } ;


 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int pci_free_consistent (int ,int,int ,int ) ;

__attribute__((used)) static void free_ringdesc(struct netdev_private *np)
{
 pci_free_consistent(np->pci_dev,
   sizeof(struct w840_rx_desc)*RX_RING_SIZE +
   sizeof(struct w840_tx_desc)*TX_RING_SIZE,
   np->rx_ring, np->ring_dma_addr);

}
