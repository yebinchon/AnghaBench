
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; scalar_t__ dma_address; } ;
struct device {int dummy; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;
 int sun4c_unlockarea (char*,int ) ;

__attribute__((used)) static void sun4c_release_scsi_sgl(struct device *dev, struct scatterlist *sg, int sz)
{
 while (sz != 0) {
  --sz;
  sun4c_unlockarea((char *)sg->dma_address, sg->length);
  sg = sg_next(sg);
 }
}
