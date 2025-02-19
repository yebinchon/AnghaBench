
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct typhoon_indexes {void* rxBuffReady; int rxBuffCleared; } ;
struct basic_ring {int lastWrite; scalar_t__ ringBase; } ;
struct typhoon {int pdev; int dev; struct basic_ring rxBuffRing; struct rxbuff_ent* rxbuffers; struct typhoon_indexes* indexes; } ;
struct sk_buff {int data; int dev; } ;
struct rxbuff_ent {int dma_addr; struct sk_buff* skb; } ;
struct rx_free {size_t virtAddr; void* physAddr; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int RXFREE_ENTRIES ;
 void* cpu_to_le32 (int) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int le32_to_cpu (int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,int) ;
 int typhoon_inc_rxfree_index (int*,int) ;
 int wmb () ;

__attribute__((used)) static int
typhoon_alloc_rx_skb(struct typhoon *tp, u32 idx)
{
 struct typhoon_indexes *indexes = tp->indexes;
 struct rxbuff_ent *rxb = &tp->rxbuffers[idx];
 struct basic_ring *ring = &tp->rxBuffRing;
 struct rx_free *r;
 struct sk_buff *skb;
 dma_addr_t dma_addr;

 rxb->skb = ((void*)0);

 if((ring->lastWrite + sizeof(*r)) % (RXFREE_ENTRIES * sizeof(*r)) ==
    le32_to_cpu(indexes->rxBuffCleared))
  return -ENOMEM;

 skb = dev_alloc_skb(PKT_BUF_SZ);
 if(!skb)
  return -ENOMEM;
 skb->dev = tp->dev;
 dma_addr = pci_map_single(tp->pdev, skb->data,
      PKT_BUF_SZ, PCI_DMA_FROMDEVICE);




 r = (struct rx_free *) (ring->ringBase + ring->lastWrite);
 typhoon_inc_rxfree_index(&ring->lastWrite, 1);
 r->virtAddr = idx;
 r->physAddr = cpu_to_le32(dma_addr);
 rxb->skb = skb;
 rxb->dma_addr = dma_addr;


 wmb();
 indexes->rxBuffReady = cpu_to_le32(ring->lastWrite);
 return 0;
}
