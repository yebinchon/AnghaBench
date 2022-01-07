
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iounit_struct {int lock; } ;
struct TYPE_2__ {struct iounit_struct* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef unsigned long __u32 ;


 unsigned long iounit_get_area (struct iounit_struct*,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __u32 iounit_get_scsi_one(struct device *dev, char *vaddr, unsigned long len)
{
 struct iounit_struct *iounit = dev->archdata.iommu;
 unsigned long ret, flags;

 spin_lock_irqsave(&iounit->lock, flags);
 ret = iounit_get_area(iounit, (unsigned long)vaddr, len);
 spin_unlock_irqrestore(&iounit->lock, flags);
 return ret;
}
