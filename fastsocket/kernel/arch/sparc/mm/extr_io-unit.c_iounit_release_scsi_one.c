
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iounit_struct {int lock; int bmap; } ;
struct TYPE_2__ {struct iounit_struct* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef unsigned long __u32 ;


 int IOD (char*) ;
 unsigned long IOUNIT_DMA_BASE ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int clear_bit (unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iounit_release_scsi_one(struct device *dev, __u32 vaddr, unsigned long len)
{
 struct iounit_struct *iounit = dev->archdata.iommu;
 unsigned long flags;

 spin_lock_irqsave(&iounit->lock, flags);
 len = ((vaddr & ~PAGE_MASK) + len + (PAGE_SIZE-1)) >> PAGE_SHIFT;
 vaddr = (vaddr - IOUNIT_DMA_BASE) >> PAGE_SHIFT;
 IOD(("iounit_release %08lx-%08lx\n", (long)vaddr, (long)len+vaddr));
 for (len += vaddr; vaddr < len; vaddr++)
  clear_bit(vaddr, iounit->bmap);
 spin_unlock_irqrestore(&iounit->lock, flags);
}
