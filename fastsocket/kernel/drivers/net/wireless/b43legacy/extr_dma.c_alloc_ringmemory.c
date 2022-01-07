
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43legacy_dmaring {int descbase; int dmabase; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dma_dev; } ;


 int B43legacy_DMA_RINGMEMSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int dma_alloc_coherent (int ,int ,int *,int) ;

__attribute__((used)) static int alloc_ringmemory(struct b43legacy_dmaring *ring)
{

 ring->descbase = dma_alloc_coherent(ring->dev->dev->dma_dev,
         B43legacy_DMA_RINGMEMSIZE,
         &(ring->dmabase),
         GFP_KERNEL | __GFP_ZERO);
 if (!ring->descbase)
  return -ENOMEM;

 return 0;
}
