
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int flush_kernel_dcache_range (int ,int ) ;
 int sg_virt_addr (struct scatterlist*) ;

__attribute__((used)) static void pa11_dma_sync_sg_for_cpu(struct device *dev, struct scatterlist *sglist, int nents, enum dma_data_direction direction)
{
 int i;



 for (i = 0; i < nents; i++, sglist++ )
  flush_kernel_dcache_range(sg_virt_addr(sglist), sglist->length);
}
