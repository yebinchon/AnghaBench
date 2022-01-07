
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct e1000_ring {int count; int * desc; int dma; int size; TYPE_1__* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;
struct TYPE_2__ {int ps_pages; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int e1000_clean_rx_ring (struct e1000_ring*) ;
 int kfree (int ) ;
 int vfree (TYPE_1__*) ;

void e1000e_free_rx_resources(struct e1000_ring *rx_ring)
{
 struct e1000_adapter *adapter = rx_ring->adapter;
 struct pci_dev *pdev = adapter->pdev;
 int i;

 e1000_clean_rx_ring(rx_ring);

 for (i = 0; i < rx_ring->count; i++)
  kfree(rx_ring->buffer_info[i].ps_pages);

 vfree(rx_ring->buffer_info);
 rx_ring->buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, rx_ring->size, rx_ring->desc,
     rx_ring->dma);
 rx_ring->desc = ((void*)0);
}
