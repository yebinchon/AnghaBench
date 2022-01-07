
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dma_dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int dma_desc_sync_size ;
 int dma_sync_single_for_cpu (int ,scalar_t__,int ,int) ;

__attribute__((used)) static inline void b44_sync_dma_desc_for_cpu(struct ssb_device *sdev,
          dma_addr_t dma_base,
          unsigned long offset,
          enum dma_data_direction dir)
{
 dma_sync_single_for_cpu(sdev->dma_dev, dma_base + offset,
    dma_desc_sync_size, dir);
}
