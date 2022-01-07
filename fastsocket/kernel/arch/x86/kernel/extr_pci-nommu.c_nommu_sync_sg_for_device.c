
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int flush_write_buffers () ;

__attribute__((used)) static void nommu_sync_sg_for_device(struct device *dev,
   struct scatterlist *sg, int nelems,
   enum dma_data_direction dir)
{
 flush_write_buffers();
}
