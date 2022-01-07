
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int mb () ;

void
machvec_dma_sync_single(struct device *hwdev, dma_addr_t dma_handle, size_t size,
   enum dma_data_direction dir)
{
 mb();
}
