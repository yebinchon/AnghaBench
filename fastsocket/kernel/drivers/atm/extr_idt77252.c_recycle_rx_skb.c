
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct idt77252_dev {int pcidev; } ;


 int IDT77252_PRV_PADDR (struct sk_buff*) ;
 int IDT77252_PRV_POOL (struct sk_buff*) ;
 int PCI_DMA_FROMDEVICE ;
 int POOL_QUEUE (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pci_dma_sync_single_for_device (int ,int ,scalar_t__,int ) ;
 int pci_unmap_single (int ,int ,scalar_t__,int ) ;
 int push_rx_skb (struct idt77252_dev*,struct sk_buff*,int ) ;
 int sb_pool_remove (struct idt77252_dev*,struct sk_buff*) ;
 scalar_t__ skb_end_pointer (struct sk_buff*) ;

__attribute__((used)) static void
recycle_rx_skb(struct idt77252_dev *card, struct sk_buff *skb)
{
 u32 handle = IDT77252_PRV_POOL(skb);
 int err;

 pci_dma_sync_single_for_device(card->pcidev, IDT77252_PRV_PADDR(skb),
           skb_end_pointer(skb) - skb->data,
           PCI_DMA_FROMDEVICE);

 err = push_rx_skb(card, skb, POOL_QUEUE(handle));
 if (err) {
  pci_unmap_single(card->pcidev, IDT77252_PRV_PADDR(skb),
     skb_end_pointer(skb) - skb->data,
     PCI_DMA_FROMDEVICE);
  sb_pool_remove(card, skb);
  dev_kfree_skb(skb);
 }
}
