
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_dmaring {TYPE_2__* dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dma_dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_map_single (int ,unsigned char*,size_t,int ) ;

__attribute__((used)) static inline
    dma_addr_t map_descbuffer(struct b43_dmaring *ring,
         unsigned char *buf, size_t len, int tx)
{
 dma_addr_t dmaaddr;

 if (tx) {
  dmaaddr = dma_map_single(ring->dev->dev->dma_dev,
      buf, len, DMA_TO_DEVICE);
 } else {
  dmaaddr = dma_map_single(ring->dev->dev->dma_dev,
      buf, len, DMA_FROM_DEVICE);
 }

 return dmaaddr;
}
