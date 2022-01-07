
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int dummy; } ;


 int MAX_DOMAIN_ID ;
 int amd_iommu_pd_alloc_bitmap ;
 int flush_domain_on_iommu (struct amd_iommu*,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void flush_all_domains_on_iommu(struct amd_iommu *iommu)
{
 int i;

 for (i = 1; i < MAX_DOMAIN_ID; ++i) {
  if (!test_bit(i, amd_iommu_pd_alloc_bitmap))
   continue;
  flush_domain_on_iommu(iommu, i);
 }

}
