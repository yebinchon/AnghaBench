
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_dma_descriptor_ring {int n_links; int hw_dev; int descriptors_dma_addr; scalar_t__ descriptors; } ;
struct mite_dma_descriptor {int dummy; } ;


 int dma_free_coherent (int ,int,scalar_t__,int ) ;
 int kfree (struct mite_dma_descriptor_ring*) ;
 int put_device (int ) ;

__attribute__((used)) static inline void mite_free_ring(struct mite_dma_descriptor_ring *ring)
{
 if (ring) {
  if (ring->descriptors) {
   dma_free_coherent(ring->hw_dev,
       ring->n_links *
       sizeof(struct mite_dma_descriptor),
       ring->descriptors,
       ring->descriptors_dma_addr);
  }
  put_device(ring->hw_dev);
  kfree(ring);
 }
}
