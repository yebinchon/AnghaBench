
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int offset; int dma_address; int dma_length; } ;
struct device {int dummy; } ;


 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int flush_page_for_dma (unsigned long) ;
 int iommu_get_one (struct device*,int ,int) ;
 scalar_t__ page_address (int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void iommu_get_scsi_sgl_pflush(struct device *dev, struct scatterlist *sg, int sz)
{
 unsigned long page, oldpage = 0;
 int n, i;

 while(sz != 0) {
  --sz;

  n = (sg->length + sg->offset + PAGE_SIZE-1) >> PAGE_SHIFT;






  if ((page = (unsigned long) page_address(sg_page(sg))) != 0) {
   for (i = 0; i < n; i++) {
    if (page != oldpage) {
     flush_page_for_dma(page);
     oldpage = page;
    }
    page += PAGE_SIZE;
   }
  }

  sg->dma_address = iommu_get_one(dev, sg_page(sg), n) + sg->offset;
  sg->dma_length = sg->length;
  sg = sg_next(sg);
 }
}
