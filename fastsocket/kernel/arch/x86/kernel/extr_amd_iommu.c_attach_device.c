
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct protection_domain {int id; } ;
struct amd_iommu {int dummy; } ;


 int __attach_device (struct amd_iommu*,struct protection_domain*,int ) ;
 int amd_iommu_devtable_lock ;
 int iommu_flush_tlb_pde (struct amd_iommu*,int ) ;
 int iommu_queue_inv_dev_entry (struct amd_iommu*,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void attach_device(struct amd_iommu *iommu,
     struct protection_domain *domain,
     u16 devid)
{
 unsigned long flags;

 write_lock_irqsave(&amd_iommu_devtable_lock, flags);
 __attach_device(iommu, domain, devid);
 write_unlock_irqrestore(&amd_iommu_devtable_lock, flags);






 iommu_queue_inv_dev_entry(iommu, devid);
 iommu_flush_tlb_pde(iommu, domain->id);
}
