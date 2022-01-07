
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova {int dummy; } ;


 int iommu_iova_cache ;
 struct iova* iommu_kmem_cache_alloc (int ) ;

struct iova *alloc_iova_mem(void)
{
 return iommu_kmem_cache_alloc(iommu_iova_cache);
}
