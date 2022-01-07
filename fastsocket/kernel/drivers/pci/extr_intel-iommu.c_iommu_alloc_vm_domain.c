
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int flags; int iommu_bmp; scalar_t__ id; } ;


 int DOMAIN_FLAG_VIRTUAL_MACHINE ;
 struct dmar_domain* alloc_domain_mem () ;
 int memset (int ,int ,int) ;
 int vm_domid ;

__attribute__((used)) static struct dmar_domain *iommu_alloc_vm_domain(void)
{
 struct dmar_domain *domain;

 domain = alloc_domain_mem();
 if (!domain)
  return ((void*)0);

 domain->id = vm_domid++;
 memset(domain->iommu_bmp, 0, sizeof(domain->iommu_bmp));
 domain->flags = DOMAIN_FLAG_VIRTUAL_MACHINE;

 return domain;
}
