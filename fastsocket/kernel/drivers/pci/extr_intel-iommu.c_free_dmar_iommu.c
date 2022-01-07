
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int gcmd; size_t seq_id; struct dmar_domain** domain_ids; struct dmar_domain** domains; scalar_t__ irq; int cap; } ;
struct dmar_domain {scalar_t__ iommu_count; int flags; int iommu_lock; } ;


 int DMA_GCMD_TE ;
 int DOMAIN_FLAG_VIRTUAL_MACHINE ;
 int cap_ndoms (int ) ;
 int clear_bit (int,struct dmar_domain**) ;
 int destroy_irq (scalar_t__) ;
 int domain_exit (struct dmar_domain*) ;
 int find_first_bit (struct dmar_domain**,int) ;
 int find_next_bit (struct dmar_domain**,int,int) ;
 int free_context_table (struct intel_iommu*) ;
 int free_irq (scalar_t__,struct intel_iommu*) ;
 struct dmar_domain** g_iommus ;
 int g_num_of_iommus ;
 int iommu_disable_translation (struct intel_iommu*) ;
 int kfree (struct dmar_domain**) ;
 int set_irq_data (scalar_t__,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vm_domain_exit (struct dmar_domain*) ;

void free_dmar_iommu(struct intel_iommu *iommu)
{
 struct dmar_domain *domain;
 int i;
 unsigned long flags;

 if ((iommu->domains) && (iommu->domain_ids)) {
  i = find_first_bit(iommu->domain_ids, cap_ndoms(iommu->cap));
  for (; i < cap_ndoms(iommu->cap); ) {
   domain = iommu->domains[i];
   clear_bit(i, iommu->domain_ids);

   spin_lock_irqsave(&domain->iommu_lock, flags);
   if (--domain->iommu_count == 0) {
    if (domain->flags & DOMAIN_FLAG_VIRTUAL_MACHINE)
     vm_domain_exit(domain);
    else
     domain_exit(domain);
   }
   spin_unlock_irqrestore(&domain->iommu_lock, flags);

   i = find_next_bit(iommu->domain_ids,
    cap_ndoms(iommu->cap), i+1);
  }
 }

 if (iommu->gcmd & DMA_GCMD_TE)
  iommu_disable_translation(iommu);

 if (iommu->irq) {
  set_irq_data(iommu->irq, ((void*)0));

  free_irq(iommu->irq, iommu);
  destroy_irq(iommu->irq);
 }

 kfree(iommu->domains);
 kfree(iommu->domain_ids);

 g_iommus[iommu->seq_id] = ((void*)0);


 for (i = 0; i < g_num_of_iommus; i++) {
  if (g_iommus[i])
   break;
 }

 if (i == g_num_of_iommus)
  kfree(g_iommus);


 free_context_table(iommu);
}
