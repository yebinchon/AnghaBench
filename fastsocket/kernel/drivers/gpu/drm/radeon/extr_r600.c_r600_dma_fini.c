
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int * ring; } ;


 size_t R600_RING_TYPE_DMA_INDEX ;
 int r600_dma_stop (struct radeon_device*) ;
 int radeon_ring_fini (struct radeon_device*,int *) ;

void r600_dma_fini(struct radeon_device *rdev)
{
 r600_dma_stop(rdev);
 radeon_ring_fini(rdev, &rdev->ring[R600_RING_TYPE_DMA_INDEX]);
}
