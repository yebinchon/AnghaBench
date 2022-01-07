
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int dummy; } ;
struct amd_iommu {int dummy; } ;


 unsigned long amd_iommu_last_bdf ;
 struct protection_domain** amd_iommu_pd_table ;
 struct amd_iommu** amd_iommu_rlookup_table ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_queue_inv_dev_entry (struct amd_iommu*,unsigned long) ;

__attribute__((used)) static void flush_devices_by_domain(struct protection_domain *domain)
{
 struct amd_iommu *iommu;
 unsigned long i;

 for (i = 0; i <= amd_iommu_last_bdf; ++i) {
  if ((domain == ((void*)0) && amd_iommu_pd_table[i] == ((void*)0)) ||
      (domain != ((void*)0) && amd_iommu_pd_table[i] != domain))
   continue;

  iommu = amd_iommu_rlookup_table[i];
  if (!iommu)
   continue;

  iommu_queue_inv_dev_entry(iommu, i);
  iommu_completion_wait(iommu);
 }
}
