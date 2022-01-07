
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mite_struct {TYPE_1__* pcidev; } ;
struct mite_dma_descriptor_ring {scalar_t__ descriptors_dma_addr; int * descriptors; scalar_t__ n_links; int * hw_dev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int * get_device (int *) ;
 int kfree (struct mite_dma_descriptor_ring*) ;
 struct mite_dma_descriptor_ring* kmalloc (int,int ) ;

__attribute__((used)) static inline struct mite_dma_descriptor_ring *mite_alloc_ring(struct
              mite_struct
              *mite)
{
 struct mite_dma_descriptor_ring *ring =
     kmalloc(sizeof(struct mite_dma_descriptor_ring), GFP_KERNEL);
 if (ring == ((void*)0))
  return ring;
 ring->hw_dev = get_device(&mite->pcidev->dev);
 if (ring->hw_dev == ((void*)0)) {
  kfree(ring);
  return ((void*)0);
 }
 ring->n_links = 0;
 ring->descriptors = ((void*)0);
 ring->descriptors_dma_addr = 0;
 return ring;
}
