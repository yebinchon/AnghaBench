
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct pci_dev {int dev; } ;
struct ixgbevf_rx_buffer {int dummy; } ;
struct ixgbevf_ring {int count; int size; scalar_t__ next_to_use; scalar_t__ next_to_clean; int * rx_buffer_info; int desc; int dma; } ;
struct ixgbevf_adapter {struct pci_dev* pdev; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
          struct ixgbevf_ring *rx_ring)
{
 struct pci_dev *pdev = adapter->pdev;
 int size;

 size = sizeof(struct ixgbevf_rx_buffer) * rx_ring->count;
 rx_ring->rx_buffer_info = vzalloc(size);
 if (!rx_ring->rx_buffer_info)
  goto alloc_failed;


 rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
 rx_ring->size = ALIGN(rx_ring->size, 4096);

 rx_ring->desc = dma_alloc_coherent(&pdev->dev, rx_ring->size,
        &rx_ring->dma, GFP_KERNEL);

 if (!rx_ring->desc) {
  vfree(rx_ring->rx_buffer_info);
  rx_ring->rx_buffer_info = ((void*)0);
  goto alloc_failed;
 }

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 return 0;
alloc_failed:
 return -ENOMEM;
}
