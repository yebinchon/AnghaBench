
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {scalar_t__ flags; int iommu_bmp; } ;


 struct dmar_domain* alloc_domain_mem () ;
 int memset (int ,int ,int) ;

__attribute__((used)) static struct dmar_domain *alloc_domain(void)
{
 struct dmar_domain *domain;

 domain = alloc_domain_mem();
 if (!domain)
  return ((void*)0);

 memset(domain->iommu_bmp, 0, sizeof(domain->iommu_bmp));
 domain->flags = 0;

 return domain;
}
