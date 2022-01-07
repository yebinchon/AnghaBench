
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_cmd {int dummy; } ;
struct amd_iommu {int need_sync; int lock; } ;


 int __iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iommu_queue_command(struct amd_iommu *iommu, struct iommu_cmd *cmd)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&iommu->lock, flags);
 ret = __iommu_queue_command(iommu, cmd);
 if (!ret)
  iommu->need_sync = 1;
 spin_unlock_irqrestore(&iommu->lock, flags);

 return ret;
}
