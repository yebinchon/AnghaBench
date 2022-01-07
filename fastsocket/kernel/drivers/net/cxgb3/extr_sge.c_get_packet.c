
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct sge_fl {size_t cidx; unsigned int credits; unsigned int size; int buf_size; struct rx_sw_desc* sdesc; } ;
struct rx_sw_desc {struct sk_buff* skb; } ;
struct adapter {int pdev; } ;


 int GFP_ATOMIC ;
 int MAX_RX_REFILL ;
 int PCI_DMA_FROMDEVICE ;
 unsigned int SGE_RX_COPY_THRES ;
 int __GFP_COMP ;
 int __refill_fl (struct adapter*,struct sge_fl*) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 struct sk_buff* alloc_skb (unsigned int,int) ;
 int dma_addr ;
 scalar_t__ likely (int ) ;
 int memcpy (int ,int ,unsigned int) ;
 int min (int ,unsigned int) ;
 int pci_dma_sync_single_for_cpu (int ,int ,unsigned int,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,unsigned int,int ) ;
 int pci_unmap_addr (struct rx_sw_desc*,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int prefetch (int ) ;
 int recycle_rx_buf (struct adapter*,struct sge_fl*,size_t) ;
 scalar_t__ refill_fl (struct adapter*,struct sge_fl*,int ,int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *get_packet(struct adapter *adap, struct sge_fl *fl,
      unsigned int len, unsigned int drop_thres)
{
 struct sk_buff *skb = ((void*)0);
 struct rx_sw_desc *sd = &fl->sdesc[fl->cidx];

 prefetch(sd->skb->data);
 fl->credits--;

 if (len <= SGE_RX_COPY_THRES) {
  skb = alloc_skb(len, GFP_ATOMIC);
  if (likely(skb != ((void*)0))) {
   __skb_put(skb, len);
   pci_dma_sync_single_for_cpu(adap->pdev,
         pci_unmap_addr(sd, dma_addr), len,
         PCI_DMA_FROMDEVICE);
   memcpy(skb->data, sd->skb->data, len);
   pci_dma_sync_single_for_device(adap->pdev,
         pci_unmap_addr(sd, dma_addr), len,
         PCI_DMA_FROMDEVICE);
  } else if (!drop_thres)
   goto use_orig_buf;
recycle:
  recycle_rx_buf(adap, fl, fl->cidx);
  return skb;
 }

 if (unlikely(fl->credits < drop_thres) &&
     refill_fl(adap, fl, min(MAX_RX_REFILL, fl->size - fl->credits - 1),
        GFP_ATOMIC | __GFP_COMP) == 0)
  goto recycle;

use_orig_buf:
 pci_unmap_single(adap->pdev, pci_unmap_addr(sd, dma_addr),
    fl->buf_size, PCI_DMA_FROMDEVICE);
 skb = sd->skb;
 skb_put(skb, len);
 __refill_fl(adap, fl);
 return skb;
}
