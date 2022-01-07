
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ixgbevf_ring {int * desc; int dma; int size; int * tx_buffer_info; } ;
struct ixgbevf_adapter {struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int ixgbevf_clean_tx_ring (struct ixgbevf_adapter*,struct ixgbevf_ring*) ;
 int vfree (int *) ;

void ixgbevf_free_tx_resources(struct ixgbevf_adapter *adapter,
          struct ixgbevf_ring *tx_ring)
{
 struct pci_dev *pdev = adapter->pdev;

 ixgbevf_clean_tx_ring(adapter, tx_ring);

 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, tx_ring->size, tx_ring->desc,
     tx_ring->dma);

 tx_ring->desc = ((void*)0);
}
