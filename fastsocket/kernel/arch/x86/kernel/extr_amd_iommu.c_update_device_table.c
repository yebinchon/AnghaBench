
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int dummy; } ;


 int amd_iommu_devtable_lock ;
 int amd_iommu_last_bdf ;
 struct protection_domain** amd_iommu_pd_table ;
 int set_dte_entry (int,struct protection_domain*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void update_device_table(struct protection_domain *domain)
{
 unsigned long flags;
 int i;

 for (i = 0; i <= amd_iommu_last_bdf; ++i) {
  if (amd_iommu_pd_table[i] != domain)
   continue;
  write_lock_irqsave(&amd_iommu_devtable_lock, flags);
  set_dte_entry(i, domain);
  write_unlock_irqrestore(&amd_iommu_devtable_lock, flags);
 }
}
