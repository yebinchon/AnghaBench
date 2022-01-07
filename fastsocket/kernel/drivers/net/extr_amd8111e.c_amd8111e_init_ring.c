
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct amd8111e_tx_dr {int dummy; } ;
struct amd8111e_rx_dr {int dummy; } ;
struct amd8111e_priv {int tx_ring_dma_addr; TYPE_2__* tx_ring; int pci_dev; int rx_ring_dma_addr; TYPE_2__* rx_ring; scalar_t__ rx_buff_len; int * rx_dma_addr; TYPE_1__** rx_skbuff; scalar_t__ opened; scalar_t__ tx_ring_idx; scalar_t__ tx_complete_idx; scalar_t__ tx_idx; scalar_t__ rx_idx; } ;
struct TYPE_6__ {void* buff_count; scalar_t__ tx_flags; scalar_t__ buff_phy_addr; void* rx_flags; } ;
struct TYPE_5__ {int data; } ;


 int ENOMEM ;
 int NUM_RX_BUFFERS ;
 int NUM_RX_RING_DR ;
 int NUM_TX_RING_DR ;
 scalar_t__ OWN_BIT ;
 int PCI_DMA_FROMDEVICE ;
 int amd8111e_free_skbs (struct net_device*) ;
 int amd8111e_set_rx_buff_len (struct net_device*) ;
 void* cpu_to_le16 (scalar_t__) ;
 scalar_t__ cpu_to_le32 (int ) ;
 TYPE_1__* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb (TYPE_1__*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 void* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,TYPE_2__*,int ) ;
 int pci_map_single (int ,int ,scalar_t__,int ) ;
 int skb_reserve (TYPE_1__*,int) ;
 int wmb () ;

__attribute__((used)) static int amd8111e_init_ring(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 int i;

 lp->rx_idx = lp->tx_idx = 0;
 lp->tx_complete_idx = 0;
 lp->tx_ring_idx = 0;


 if(lp->opened)

  amd8111e_free_skbs(dev);

 else{

       if((lp->tx_ring = pci_alloc_consistent(lp->pci_dev,
   sizeof(struct amd8111e_tx_dr)*NUM_TX_RING_DR,
   &lp->tx_ring_dma_addr)) == ((void*)0))

   goto err_no_mem;

       if((lp->rx_ring = pci_alloc_consistent(lp->pci_dev,
   sizeof(struct amd8111e_rx_dr)*NUM_RX_RING_DR,
   &lp->rx_ring_dma_addr)) == ((void*)0))

   goto err_free_tx_ring;

 }

 amd8111e_set_rx_buff_len(dev);


 for (i = 0; i < NUM_RX_BUFFERS; i++) {

  if (!(lp->rx_skbuff[i] = dev_alloc_skb(lp->rx_buff_len))) {

    for(--i; i >= 0 ;i--)
     dev_kfree_skb(lp->rx_skbuff[i]);
    goto err_free_rx_ring;
  }
  skb_reserve(lp->rx_skbuff[i],2);
 }

 for (i = 0; i < NUM_RX_BUFFERS; i++) {
  lp->rx_dma_addr[i] = pci_map_single(lp->pci_dev,
   lp->rx_skbuff[i]->data,lp->rx_buff_len-2, PCI_DMA_FROMDEVICE);

  lp->rx_ring[i].buff_phy_addr = cpu_to_le32(lp->rx_dma_addr[i]);
  lp->rx_ring[i].buff_count = cpu_to_le16(lp->rx_buff_len-2);
  wmb();
  lp->rx_ring[i].rx_flags = cpu_to_le16(OWN_BIT);
 }


 for (i = 0; i < NUM_TX_RING_DR; i++) {
  lp->tx_ring[i].buff_phy_addr = 0;
  lp->tx_ring[i].tx_flags = 0;
  lp->tx_ring[i].buff_count = 0;
 }

 return 0;

err_free_rx_ring:

 pci_free_consistent(lp->pci_dev,
  sizeof(struct amd8111e_rx_dr)*NUM_RX_RING_DR,lp->rx_ring,
  lp->rx_ring_dma_addr);

err_free_tx_ring:

 pci_free_consistent(lp->pci_dev,
   sizeof(struct amd8111e_tx_dr)*NUM_TX_RING_DR,lp->tx_ring,
   lp->tx_ring_dma_addr);

err_no_mem:
 return -ENOMEM;
}
