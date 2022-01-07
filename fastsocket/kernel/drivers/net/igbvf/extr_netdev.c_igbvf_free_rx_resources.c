
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct igbvf_ring {int * desc; int dma; int size; int * buffer_info; TYPE_1__* adapter; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int igbvf_clean_rx_ring (struct igbvf_ring*) ;
 int vfree (int *) ;

void igbvf_free_rx_resources(struct igbvf_ring *rx_ring)
{
 struct pci_dev *pdev = rx_ring->adapter->pdev;

 igbvf_clean_rx_ring(rx_ring);

 vfree(rx_ring->buffer_info);
 rx_ring->buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, rx_ring->size, rx_ring->desc,
                   rx_ring->dma);
 rx_ring->desc = ((void*)0);
}
