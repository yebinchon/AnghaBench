
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_dmaring {TYPE_2__* dev; int tx; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dma_dev; } ;


 int B43_WARN_ON (int ) ;
 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (int ,int ,size_t,int ) ;

__attribute__((used)) static inline
    void sync_descbuffer_for_cpu(struct b43_dmaring *ring,
     dma_addr_t addr, size_t len)
{
 B43_WARN_ON(ring->tx);
 dma_sync_single_for_cpu(ring->dev->dev->dma_dev,
        addr, len, DMA_FROM_DEVICE);
}
