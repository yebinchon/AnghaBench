
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_tx_desc {scalar_t__ len; } ;
struct c2_element {int * skb; int maplen; int mapaddr; struct c2_tx_desc* ht_desc; } ;
struct c2_dev {int pcidev; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (int *) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static inline int c2_tx_free(struct c2_dev *c2dev, struct c2_element *elem)
{
 struct c2_tx_desc *tx_desc = elem->ht_desc;

 tx_desc->len = 0;

 pci_unmap_single(c2dev->pcidev, elem->mapaddr, elem->maplen,
    PCI_DMA_TODEVICE);

 if (elem->skb) {
  dev_kfree_skb_any(elem->skb);
  elem->skb = ((void*)0);
 }

 return 0;
}
