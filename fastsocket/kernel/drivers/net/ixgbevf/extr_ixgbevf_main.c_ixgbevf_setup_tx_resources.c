
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
struct pci_dev {int dev; } ;
struct ixgbevf_tx_buffer {int dummy; } ;
struct ixgbevf_ring {int count; int size; int * tx_buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; int desc; int dma; } ;
struct ixgbevf_adapter {int hw; struct pci_dev* pdev; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int hw_dbg (int *,char*) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

int ixgbevf_setup_tx_resources(struct ixgbevf_adapter *adapter,
          struct ixgbevf_ring *tx_ring)
{
 struct pci_dev *pdev = adapter->pdev;
 int size;

 size = sizeof(struct ixgbevf_tx_buffer) * tx_ring->count;
 tx_ring->tx_buffer_info = vzalloc(size);
 if (!tx_ring->tx_buffer_info)
  goto err;


 tx_ring->size = tx_ring->count * sizeof(union ixgbe_adv_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);

 tx_ring->desc = dma_alloc_coherent(&pdev->dev, tx_ring->size,
        &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc)
  goto err;

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;
 return 0;

err:
 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);
 hw_dbg(&adapter->hw, "Unable to allocate memory for the transmit "
        "descriptor ring\n");
 return -ENOMEM;
}
