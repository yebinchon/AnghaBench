
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int gaw; int iovad; } ;


 int DOMAIN_MAX_PFN (int ) ;
 int dma_pte_clear_range (struct dmar_domain*,int ,int ) ;
 int dma_pte_free_pagetable (struct dmar_domain*,int ,int ) ;
 int free_domain_mem (struct dmar_domain*) ;
 int iommu_free_vm_domain (struct dmar_domain*) ;
 int put_iova_domain (int *) ;
 int vm_domain_remove_all_dev_info (struct dmar_domain*) ;

__attribute__((used)) static void vm_domain_exit(struct dmar_domain *domain)
{

 if (!domain)
  return;

 vm_domain_remove_all_dev_info(domain);

 put_iova_domain(&domain->iovad);


 dma_pte_clear_range(domain, 0, DOMAIN_MAX_PFN(domain->gaw));


 dma_pte_free_pagetable(domain, 0, DOMAIN_MAX_PFN(domain->gaw));

 iommu_free_vm_domain(domain);
 free_domain_mem(domain);
}
