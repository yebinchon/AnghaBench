
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct e1000_tx_ring {int count; TYPE_1__* buffer_info; int * desc; int dma; int size; } ;
struct e1000_rx_ring {int count; TYPE_1__* buffer_info; int * desc; int dma; int size; } ;
struct e1000_adapter {struct pci_dev* pdev; struct e1000_rx_ring test_rx_ring; struct e1000_tx_ring test_tx_ring; } ;
struct TYPE_2__ {scalar_t__ skb; int length; scalar_t__ dma; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dev_kfree_skb (scalar_t__) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void e1000_free_desc_rings(struct e1000_adapter *adapter)
{
 struct e1000_tx_ring *txdr = &adapter->test_tx_ring;
 struct e1000_rx_ring *rxdr = &adapter->test_rx_ring;
 struct pci_dev *pdev = adapter->pdev;
 int i;

 if (txdr->desc && txdr->buffer_info) {
  for (i = 0; i < txdr->count; i++) {
   if (txdr->buffer_info[i].dma)
    dma_unmap_single(&pdev->dev,
       txdr->buffer_info[i].dma,
       txdr->buffer_info[i].length,
       DMA_TO_DEVICE);
   if (txdr->buffer_info[i].skb)
    dev_kfree_skb(txdr->buffer_info[i].skb);
  }
 }

 if (rxdr->desc && rxdr->buffer_info) {
  for (i = 0; i < rxdr->count; i++) {
   if (rxdr->buffer_info[i].dma)
    dma_unmap_single(&pdev->dev,
       rxdr->buffer_info[i].dma,
       rxdr->buffer_info[i].length,
       DMA_FROM_DEVICE);
   if (rxdr->buffer_info[i].skb)
    dev_kfree_skb(rxdr->buffer_info[i].skb);
  }
 }

 if (txdr->desc) {
  dma_free_coherent(&pdev->dev, txdr->size, txdr->desc,
      txdr->dma);
  txdr->desc = ((void*)0);
 }
 if (rxdr->desc) {
  dma_free_coherent(&pdev->dev, rxdr->size, rxdr->desc,
      rxdr->dma);
  rxdr->desc = ((void*)0);
 }

 kfree(txdr->buffer_info);
 txdr->buffer_info = ((void*)0);
 kfree(rxdr->buffer_info);
 rxdr->buffer_info = ((void*)0);
}
