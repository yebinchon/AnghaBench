
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ physAddr; int * virtAddr; scalar_t__ descriptorsAllocated; scalar_t__ bytesAllocated; } ;
typedef TYPE_1__ DMA_DescriptorRing_t ;


 int dma_free_writecombine (int *,scalar_t__,int *,scalar_t__) ;

void dma_free_descriptor_ring(DMA_DescriptorRing_t *ring
    ) {
 if (ring->virtAddr != ((void*)0)) {
  dma_free_writecombine(((void*)0),
          ring->bytesAllocated,
          ring->virtAddr, ring->physAddr);
 }

 ring->bytesAllocated = 0;
 ring->descriptorsAllocated = 0;
 ring->virtAddr = ((void*)0);
 ring->physAddr = 0;
}
