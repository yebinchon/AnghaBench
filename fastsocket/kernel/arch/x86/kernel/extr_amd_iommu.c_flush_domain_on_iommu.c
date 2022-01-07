
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int lock; } ;


 int CMD_INV_IOMMU_ALL_PAGES_ADDRESS ;
 int __iommu_build_inv_iommu_pages (struct iommu_cmd*,int ,int ,int,int) ;
 int __iommu_completion_wait (struct amd_iommu*) ;
 int __iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;
 int __iommu_wait_for_completion (struct amd_iommu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void flush_domain_on_iommu(struct amd_iommu *iommu, u16 domid)
{
 struct iommu_cmd cmd;
 unsigned long flags;

 __iommu_build_inv_iommu_pages(&cmd, CMD_INV_IOMMU_ALL_PAGES_ADDRESS,
          domid, 1, 1);

 spin_lock_irqsave(&iommu->lock, flags);
 __iommu_queue_command(iommu, &cmd);
 __iommu_completion_wait(iommu);
 __iommu_wait_for_completion(iommu);
 spin_unlock_irqrestore(&iommu->lock, flags);
}
