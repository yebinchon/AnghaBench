
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int nr_frags; int * frags; } ;
struct sk_buff {scalar_t__ transport_header; scalar_t__ tail; scalar_t__ head; } ;
struct deferred_unmap_info {int pdev; int * addr; } ;
typedef int dma_addr_t ;


 int PCI_DMA_TODEVICE ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,scalar_t__,int ) ;
 int skb_frag_size (int *) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void deferred_unmap_destructor(struct sk_buff *skb)
{
 int i;
 const dma_addr_t *p;
 const struct skb_shared_info *si;
 const struct deferred_unmap_info *dui;

 dui = (struct deferred_unmap_info *)skb->head;
 p = dui->addr;

 if (skb->tail - skb->transport_header)
  pci_unmap_single(dui->pdev, *p++,
     skb->tail - skb->transport_header,
     PCI_DMA_TODEVICE);

 si = skb_shinfo(skb);
 for (i = 0; i < si->nr_frags; i++)
  pci_unmap_page(dui->pdev, *p++, skb_frag_size(&si->frags[i]),
          PCI_DMA_TODEVICE);
}
