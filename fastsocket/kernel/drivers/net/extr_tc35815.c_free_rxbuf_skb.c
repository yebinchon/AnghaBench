
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 int RX_BUF_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void free_rxbuf_skb(struct pci_dev *hwdev, struct sk_buff *skb, dma_addr_t dma_handle)
{
 pci_unmap_single(hwdev, dma_handle, RX_BUF_SIZE,
    PCI_DMA_FROMDEVICE);
 dev_kfree_skb_any(skb);
}
