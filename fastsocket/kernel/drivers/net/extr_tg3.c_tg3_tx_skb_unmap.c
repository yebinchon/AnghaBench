
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct tg3_tx_ring_info {int fragmented; struct sk_buff* skb; } ;
struct tg3_napi {struct tg3_tx_ring_info* tx_buffers; TYPE_1__* tp; } ;
struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_4__ {int * frags; } ;
struct TYPE_3__ {int pdev; } ;


 size_t NEXT_TX (size_t) ;
 int PCI_DMA_TODEVICE ;
 int dma_unmap_addr (struct tg3_tx_ring_info*,int ) ;
 int mapping ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void tg3_tx_skb_unmap(struct tg3_napi *tnapi, u32 entry, int last)
{
 int i;
 struct sk_buff *skb;
 struct tg3_tx_ring_info *txb = &tnapi->tx_buffers[entry];

 skb = txb->skb;
 txb->skb = ((void*)0);

 pci_unmap_single(tnapi->tp->pdev,
    dma_unmap_addr(txb, mapping),
    skb_headlen(skb),
    PCI_DMA_TODEVICE);

 while (txb->fragmented) {
  txb->fragmented = 0;
  entry = NEXT_TX(entry);
  txb = &tnapi->tx_buffers[entry];
 }

 for (i = 0; i <= last; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  entry = NEXT_TX(entry);
  txb = &tnapi->tx_buffers[entry];

  pci_unmap_page(tnapi->tp->pdev,
          dma_unmap_addr(txb, mapping),
          skb_frag_size(frag), PCI_DMA_TODEVICE);

  while (txb->fragmented) {
   txb->fragmented = 0;
   entry = NEXT_TX(entry);
   txb = &tnapi->tx_buffers[entry];
  }
 }
}
