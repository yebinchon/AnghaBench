
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int need_sync; int lock; } ;


 int __iommu_completion_wait (struct amd_iommu*) ;
 int __iommu_wait_for_completion (struct amd_iommu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iommu_completion_wait(struct amd_iommu *iommu)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&iommu->lock, flags);

 if (!iommu->need_sync)
  goto out;

 ret = __iommu_completion_wait(iommu);

 iommu->need_sync = 0;

 if (ret)
  goto out;

 __iommu_wait_for_completion(iommu);

out:
 spin_unlock_irqrestore(&iommu->lock, flags);

 return 0;
}
