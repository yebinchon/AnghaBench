
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int offset; int dma_address; int dma_length; } ;
struct device {int dummy; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int iommu_get_one (struct device*,int ,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void iommu_get_scsi_sgl_noflush(struct device *dev, struct scatterlist *sg, int sz)
{
 int n;

 while (sz != 0) {
  --sz;
  n = (sg->length + sg->offset + PAGE_SIZE-1) >> PAGE_SHIFT;
  sg->dma_address = iommu_get_one(dev, sg_page(sg), n) + sg->offset;
  sg->dma_length = sg->length;
  sg = sg_next(sg);
 }
}
