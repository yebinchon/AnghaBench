
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct typhoon_indexes {void* rxBuffReady; int rxBuffCleared; } ;
struct basic_ring {int lastWrite; scalar_t__ ringBase; } ;
struct typhoon {struct basic_ring rxBuffRing; struct rxbuff_ent* rxbuffers; struct typhoon_indexes* indexes; } ;
struct rxbuff_ent {int dma_addr; int * skb; } ;
struct rx_free {size_t virtAddr; void* physAddr; } ;


 int RXFREE_ENTRIES ;
 void* cpu_to_le32 (int) ;
 int dev_kfree_skb_any (int *) ;
 int le32_to_cpu (int ) ;
 int typhoon_inc_rxfree_index (int*,int) ;
 int wmb () ;

__attribute__((used)) static void
typhoon_recycle_rx_skb(struct typhoon *tp, u32 idx)
{
 struct typhoon_indexes *indexes = tp->indexes;
 struct rxbuff_ent *rxb = &tp->rxbuffers[idx];
 struct basic_ring *ring = &tp->rxBuffRing;
 struct rx_free *r;

 if((ring->lastWrite + sizeof(*r)) % (RXFREE_ENTRIES * sizeof(*r)) ==
    le32_to_cpu(indexes->rxBuffCleared)) {


  dev_kfree_skb_any(rxb->skb);
  rxb->skb = ((void*)0);
  return;
 }

 r = (struct rx_free *) (ring->ringBase + ring->lastWrite);
 typhoon_inc_rxfree_index(&ring->lastWrite, 1);
 r->virtAddr = idx;
 r->physAddr = cpu_to_le32(rxb->dma_addr);


 wmb();
 indexes->rxBuffReady = cpu_to_le32(ring->lastWrite);
}
