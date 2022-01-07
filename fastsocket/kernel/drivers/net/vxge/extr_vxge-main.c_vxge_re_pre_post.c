
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_rx_priv {int data_size; int data_dma; } ;
struct vxge_ring {int handle; int pdev; } ;


 int PCI_DMA_FROMDEVICE ;
 int pci_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int vxge_hw_ring_rxd_1b_set (void*,int ,int ) ;
 int vxge_hw_ring_rxd_pre_post (int ,void*) ;

__attribute__((used)) static inline void vxge_re_pre_post(void *dtr, struct vxge_ring *ring,
        struct vxge_rx_priv *rx_priv)
{
 pci_dma_sync_single_for_device(ring->pdev,
  rx_priv->data_dma, rx_priv->data_size, PCI_DMA_FROMDEVICE);

 vxge_hw_ring_rxd_1b_set(dtr, rx_priv->data_dma, rx_priv->data_size);
 vxge_hw_ring_rxd_pre_post(ring->handle, dtr);
}
