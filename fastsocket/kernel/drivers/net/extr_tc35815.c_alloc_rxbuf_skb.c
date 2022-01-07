
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 int RX_BUF_SIZE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *alloc_rxbuf_skb(struct net_device *dev,
           struct pci_dev *hwdev,
           dma_addr_t *dma_handle)
{
 struct sk_buff *skb;
 skb = dev_alloc_skb(RX_BUF_SIZE);
 if (!skb)
  return ((void*)0);
 *dma_handle = pci_map_single(hwdev, skb->data, RX_BUF_SIZE,
         PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(hwdev, *dma_handle)) {
  dev_kfree_skb_any(skb);
  return ((void*)0);
 }
 skb_reserve(skb, 2);
 return skb;
}
