
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int iommu_coherency; } ;


 int clflush_cache_range (void*,int) ;

__attribute__((used)) static void domain_flush_cache(struct dmar_domain *domain,
          void *addr, int size)
{
 if (!domain->iommu_coherency)
  clflush_cache_range(addr, size);
}
