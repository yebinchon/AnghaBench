
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct rx_ring_info {int * frag_addr; int data_addr; struct sk_buff* skb; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;
struct TYPE_3__ {int size; int page_offset; int page; } ;


 int EIO ;
 int PCI_DMA_FROMDEVICE ;
 int data_size ;
 int pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_page (struct pci_dev*,int ,int ,int ,int ) ;
 int pci_map_single (struct pci_dev*,int ,unsigned int,int ) ;
 int pci_unmap_len_set (struct rx_ring_info*,int ,unsigned int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int sky2_rx_map_skb(struct pci_dev *pdev, struct rx_ring_info *re,
       unsigned size)
{
 struct sk_buff *skb = re->skb;
 int i;

 re->data_addr = pci_map_single(pdev, skb->data, size, PCI_DMA_FROMDEVICE);
 if (unlikely(pci_dma_mapping_error(pdev, re->data_addr)))
  return -EIO;

 pci_unmap_len_set(re, data_size, size);

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++)
  re->frag_addr[i] = pci_map_page(pdev,
      skb_shinfo(skb)->frags[i].page,
      skb_shinfo(skb)->frags[i].page_offset,
      skb_shinfo(skb)->frags[i].size,
      PCI_DMA_FROMDEVICE);
 return 0;
}
