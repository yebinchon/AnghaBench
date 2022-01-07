
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {struct dmar_domain* priv; } ;
struct dmar_domain {int dummy; } ;


 int vm_domain_exit (struct dmar_domain*) ;

__attribute__((used)) static void intel_iommu_domain_destroy(struct iommu_domain *domain)
{
 struct dmar_domain *dmar_domain = domain->priv;

 domain->priv = ((void*)0);
 vm_domain_exit(dmar_domain);
}
