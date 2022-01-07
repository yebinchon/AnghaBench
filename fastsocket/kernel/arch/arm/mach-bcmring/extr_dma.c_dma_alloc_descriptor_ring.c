
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int descriptorsAllocated; size_t bytesAllocated; int * virtAddr; int physAddr; } ;
typedef TYPE_1__ DMA_DescriptorRing_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * dma_alloc_writecombine (int *,size_t,int *,int ) ;
 int dma_init_descriptor_ring (TYPE_1__*,int) ;
 size_t dmacHw_descriptorLen (int) ;

int dma_alloc_descriptor_ring(DMA_DescriptorRing_t *ring,
         int numDescriptors
    ) {
 size_t bytesToAlloc = dmacHw_descriptorLen(numDescriptors);

 if ((ring == ((void*)0)) || (numDescriptors <= 0)) {
  return -EINVAL;
 }

 ring->physAddr = 0;
 ring->descriptorsAllocated = 0;
 ring->bytesAllocated = 0;

 ring->virtAddr = dma_alloc_writecombine(((void*)0),
           bytesToAlloc,
           &ring->physAddr,
           GFP_KERNEL);
 if (ring->virtAddr == ((void*)0)) {
  return -ENOMEM;
 }

 ring->bytesAllocated = bytesToAlloc;
 ring->descriptorsAllocated = numDescriptors;

 return dma_init_descriptor_ring(ring, numDescriptors);
}
