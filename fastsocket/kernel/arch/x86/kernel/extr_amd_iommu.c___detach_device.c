
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct protection_domain {scalar_t__ dev_cnt; int id; int lock; } ;
struct amd_iommu {int dummy; } ;
struct TYPE_2__ {int* data; } ;


 int IOMMU_PTE_P ;
 int IOMMU_PTE_TV ;
 int __attach_device (struct amd_iommu*,struct protection_domain*,size_t) ;
 int amd_iommu_apply_erratum_63 (size_t) ;
 TYPE_1__* amd_iommu_dev_table ;
 int ** amd_iommu_pd_table ;
 struct amd_iommu** amd_iommu_rlookup_table ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_flush_tlb_pde (struct amd_iommu*,int ) ;
 scalar_t__ iommu_pass_through ;
 int iommu_queue_inv_dev_entry (struct amd_iommu*,size_t) ;
 struct protection_domain* pt_domain ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __detach_device(struct protection_domain *domain, u16 devid)
{
 struct amd_iommu *iommu = amd_iommu_rlookup_table[devid];


 spin_lock(&domain->lock);


 amd_iommu_pd_table[devid] = ((void*)0);


 amd_iommu_dev_table[devid].data[0] = IOMMU_PTE_P | IOMMU_PTE_TV;
 amd_iommu_dev_table[devid].data[1] = 0;
 amd_iommu_dev_table[devid].data[2] = 0;

 amd_iommu_apply_erratum_63(devid);


 domain->dev_cnt -= 1;


 spin_unlock(&domain->lock);






 if (iommu_pass_through && domain != pt_domain)
  __attach_device(iommu, pt_domain, devid);

 iommu_queue_inv_dev_entry(iommu, devid);
 if (domain->dev_cnt == 0)
  iommu_flush_tlb_pde(iommu, domain->id);
 iommu_completion_wait(iommu);
}
