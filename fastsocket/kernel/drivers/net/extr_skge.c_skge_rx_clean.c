
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_rx_desc {scalar_t__ control; } ;
struct skge_ring {struct skge_element* start; } ;
struct skge_port {struct skge_ring rx_ring; struct skge_hw* hw; } ;
struct skge_hw {int pdev; } ;
struct skge_element {int * skb; struct skge_rx_desc* desc; struct skge_element* next; } ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (int *) ;
 int mapaddr ;
 int maplen ;
 int pci_unmap_addr (struct skge_element*,int ) ;
 int pci_unmap_len (struct skge_element*,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void skge_rx_clean(struct skge_port *skge)
{
 struct skge_hw *hw = skge->hw;
 struct skge_ring *ring = &skge->rx_ring;
 struct skge_element *e;

 e = ring->start;
 do {
  struct skge_rx_desc *rd = e->desc;
  rd->control = 0;
  if (e->skb) {
   pci_unmap_single(hw->pdev,
      pci_unmap_addr(e, mapaddr),
      pci_unmap_len(e, maplen),
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb(e->skb);
   e->skb = ((void*)0);
  }
 } while ((e = e->next) != ring->start);
}
