
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_ring {struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {scalar_t__ len; scalar_t__ mapping; int * skb; } ;
struct jme_adapter {int pdev; struct jme_ring* rxring; } ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (int *) ;
 int pci_unmap_page (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
jme_free_rx_buf(struct jme_adapter *jme, int i)
{
 struct jme_ring *rxring = &(jme->rxring[0]);
 struct jme_buffer_info *rxbi = rxring->bufinf;
 rxbi += i;

 if (rxbi->skb) {
  pci_unmap_page(jme->pdev,
     rxbi->mapping,
     rxbi->len,
     PCI_DMA_FROMDEVICE);
  dev_kfree_skb(rxbi->skb);
  rxbi->skb = ((void*)0);
  rxbi->mapping = 0;
  rxbi->len = 0;
 }
}
