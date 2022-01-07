
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int seq_id; int lock; struct dmar_domain** domains; int domain_ids; int cap; } ;
struct dmar_domain {int iommu_bmp; } ;


 int cap_ndoms (int ) ;
 int clear_bit (int,int ) ;
 int find_first_bit (int ,int) ;
 int find_next_bit (int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iommu_detach_domain(struct dmar_domain *domain,
    struct intel_iommu *iommu)
{
 unsigned long flags;
 int num, ndomains;
 int found = 0;

 spin_lock_irqsave(&iommu->lock, flags);
 ndomains = cap_ndoms(iommu->cap);
 num = find_first_bit(iommu->domain_ids, ndomains);
 for (; num < ndomains; ) {
  if (iommu->domains[num] == domain) {
   found = 1;
   break;
  }
  num = find_next_bit(iommu->domain_ids,
        cap_ndoms(iommu->cap), num+1);
 }

 if (found) {
  clear_bit(num, iommu->domain_ids);
  clear_bit(iommu->seq_id, domain->iommu_bmp);
  iommu->domains[num] = ((void*)0);
 }
 spin_unlock_irqrestore(&iommu->lock, flags);
}
