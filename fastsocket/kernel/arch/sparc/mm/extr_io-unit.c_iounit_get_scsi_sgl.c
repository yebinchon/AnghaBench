
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int length; int dma_length; int dma_address; } ;
struct iounit_struct {int lock; } ;
struct TYPE_2__ {struct iounit_struct* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 int iounit_get_area (struct iounit_struct*,unsigned long,int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ sg_virt (struct scatterlist*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iounit_get_scsi_sgl(struct device *dev, struct scatterlist *sg, int sz)
{
 struct iounit_struct *iounit = dev->archdata.iommu;
 unsigned long flags;


 spin_lock_irqsave(&iounit->lock, flags);
 while (sz != 0) {
  --sz;
  sg->dma_address = iounit_get_area(iounit, (unsigned long) sg_virt(sg), sg->length);
  sg->dma_length = sg->length;
  sg = sg_next(sg);
 }
 spin_unlock_irqrestore(&iounit->lock, flags);
}
