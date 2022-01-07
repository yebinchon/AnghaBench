
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct ixgbe_rx_buffer {int dummy; } ;
struct ixgbe_ring {int count; int size; int * rx_buffer_info; scalar_t__ next_to_use; scalar_t__ next_to_clean; void* desc; int dma; TYPE_1__* q_vector; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int numa_node; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_to_node (struct device*) ;
 void* dma_alloc_coherent (struct device*,int,int *,int ) ;
 int set_dev_node (struct device*,int) ;
 int vfree (int *) ;
 int * vzalloc (int) ;
 int * vzalloc_node (int,int) ;

int ixgbe_setup_rx_resources(struct ixgbe_ring *rx_ring)
{
 struct device *dev = rx_ring->dev;
 int orig_node = dev_to_node(dev);
 int numa_node = -1;
 int size;

 size = sizeof(struct ixgbe_rx_buffer) * rx_ring->count;

 if (rx_ring->q_vector)
  numa_node = rx_ring->q_vector->numa_node;

 rx_ring->rx_buffer_info = vzalloc_node(size, numa_node);
 if (!rx_ring->rx_buffer_info)
  rx_ring->rx_buffer_info = vzalloc(size);
 if (!rx_ring->rx_buffer_info)
  goto err;


 rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
 rx_ring->size = ALIGN(rx_ring->size, 4096);

 set_dev_node(dev, numa_node);
 rx_ring->desc = dma_alloc_coherent(dev,
        rx_ring->size,
        &rx_ring->dma,
        GFP_KERNEL);
 set_dev_node(dev, orig_node);
 if (!rx_ring->desc)
  rx_ring->desc = dma_alloc_coherent(dev, rx_ring->size,
         &rx_ring->dma, GFP_KERNEL);
 if (!rx_ring->desc)
  goto err;

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 return 0;
err:
 vfree(rx_ring->rx_buffer_info);
 rx_ring->rx_buffer_info = ((void*)0);
 dev_err(dev, "Unable to allocate memory for the Rx descriptor ring\n");
 return -ENOMEM;
}
