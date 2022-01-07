
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {int data; } ;
struct sge {unsigned int rx_pkt_pad; TYPE_1__* adapter; } ;
struct pci_dev {int dummy; } ;
struct freelQ_e {int addr_hi; int len_gen; int gen2; scalar_t__ addr_lo; } ;
struct freelQ_ce {struct sk_buff* skb; } ;
struct freelQ {size_t pidx; unsigned int rx_buffer_size; unsigned int dma_offset; size_t credits; size_t size; int genbit; struct freelQ_e* entries; struct freelQ_ce* centries; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int GFP_ATOMIC ;
 int PCI_DMA_FROMDEVICE ;
 int V_CMD_GEN1 (int) ;
 int V_CMD_GEN2 (int) ;
 int V_CMD_LEN (unsigned int) ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int dma_addr ;
 scalar_t__ pci_map_single (struct pci_dev*,int ,unsigned int,int ) ;
 int pci_unmap_addr_set (struct freelQ_ce*,int ,scalar_t__) ;
 int pci_unmap_len_set (struct freelQ_ce*,unsigned int,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 int wmb () ;

__attribute__((used)) static void refill_free_list(struct sge *sge, struct freelQ *q)
{
 struct pci_dev *pdev = sge->adapter->pdev;
 struct freelQ_ce *ce = &q->centries[q->pidx];
 struct freelQ_e *e = &q->entries[q->pidx];
 unsigned int dma_len = q->rx_buffer_size - q->dma_offset;

 while (q->credits < q->size) {
  struct sk_buff *skb;
  dma_addr_t mapping;

  skb = alloc_skb(q->rx_buffer_size, GFP_ATOMIC);
  if (!skb)
   break;

  skb_reserve(skb, q->dma_offset);
  mapping = pci_map_single(pdev, skb->data, dma_len,
      PCI_DMA_FROMDEVICE);
  skb_reserve(skb, sge->rx_pkt_pad);

  ce->skb = skb;
  pci_unmap_addr_set(ce, dma_addr, mapping);
  pci_unmap_len_set(ce, dma_len, dma_len);
  e->addr_lo = (u32)mapping;
  e->addr_hi = (u64)mapping >> 32;
  e->len_gen = V_CMD_LEN(dma_len) | V_CMD_GEN1(q->genbit);
  wmb();
  e->gen2 = V_CMD_GEN2(q->genbit);

  e++;
  ce++;
  if (++q->pidx == q->size) {
   q->pidx = 0;
   q->genbit ^= 1;
   ce = q->centries;
   e = q->entries;
  }
  q->credits++;
 }
}
