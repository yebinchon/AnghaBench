
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ixgbevf_ring {int * desc; int dma; int size; int * rx_buffer_info; } ;
struct ixgbevf_adapter {struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int ixgbevf_clean_rx_ring (struct ixgbevf_adapter*,struct ixgbevf_ring*) ;
 int vfree (int *) ;

void ixgbevf_free_rx_resources(struct ixgbevf_adapter *adapter,
          struct ixgbevf_ring *rx_ring)
{
 struct pci_dev *pdev = adapter->pdev;

 ixgbevf_clean_rx_ring(adapter, rx_ring);

 vfree(rx_ring->rx_buffer_info);
 rx_ring->rx_buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, rx_ring->size, rx_ring->desc,
     rx_ring->dma);

 rx_ring->desc = ((void*)0);
}
