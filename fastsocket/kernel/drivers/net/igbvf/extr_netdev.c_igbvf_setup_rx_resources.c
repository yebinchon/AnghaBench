
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct pci_dev {int dev; } ;
struct igbvf_ring {int count; int size; int * buffer_info; struct igbvf_adapter* adapter; scalar_t__ next_to_use; scalar_t__ next_to_clean; int desc; int dma; } ;
struct igbvf_buffer {int dummy; } ;
struct igbvf_adapter {struct pci_dev* pdev; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int memset (int *,int ,int) ;
 int vfree (int *) ;
 int * vmalloc (int) ;

int igbvf_setup_rx_resources(struct igbvf_adapter *adapter,
        struct igbvf_ring *rx_ring)
{
 struct pci_dev *pdev = adapter->pdev;
 int size, desc_len;

 size = sizeof(struct igbvf_buffer) * rx_ring->count;
 rx_ring->buffer_info = vmalloc(size);
 if (!rx_ring->buffer_info)
  goto err;
 memset(rx_ring->buffer_info, 0, size);

 desc_len = sizeof(union e1000_adv_rx_desc);


 rx_ring->size = rx_ring->count * desc_len;
 rx_ring->size = ALIGN(rx_ring->size, 4096);

 rx_ring->desc = dma_alloc_coherent(&pdev->dev, rx_ring->size,
        &rx_ring->dma, GFP_KERNEL);

 if (!rx_ring->desc)
  goto err;

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 rx_ring->adapter = adapter;

 return 0;

err:
 vfree(rx_ring->buffer_info);
 rx_ring->buffer_info = ((void*)0);
 dev_err(&adapter->pdev->dev,
         "Unable to allocate memory for the receive descriptor ring\n");
 return -ENOMEM;
}
