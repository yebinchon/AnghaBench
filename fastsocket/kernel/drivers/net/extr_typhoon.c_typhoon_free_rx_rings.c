
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct typhoon {int pdev; struct rxbuff_ent* rxbuffers; } ;
struct rxbuff_ent {int * skb; int dma_addr; } ;


 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 size_t RXENT_ENTRIES ;
 int dev_kfree_skb (int *) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void
typhoon_free_rx_rings(struct typhoon *tp)
{
 u32 i;

 for(i = 0; i < RXENT_ENTRIES; i++) {
  struct rxbuff_ent *rxb = &tp->rxbuffers[i];
  if(rxb->skb) {
   pci_unmap_single(tp->pdev, rxb->dma_addr, PKT_BUF_SZ,
           PCI_DMA_FROMDEVICE);
   dev_kfree_skb(rxb->skb);
   rxb->skb = ((void*)0);
  }
 }
}
