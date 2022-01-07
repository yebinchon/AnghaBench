
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct e1000_ring {int * desc; int dma; int size; int * buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int e1000_clean_tx_ring (struct e1000_ring*) ;
 int vfree (int *) ;

void e1000e_free_tx_resources(struct e1000_ring *tx_ring)
{
 struct e1000_adapter *adapter = tx_ring->adapter;
 struct pci_dev *pdev = adapter->pdev;

 e1000_clean_tx_ring(tx_ring);

 vfree(tx_ring->buffer_info);
 tx_ring->buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, tx_ring->size, tx_ring->desc,
     tx_ring->dma);
 tx_ring->desc = ((void*)0);
}
