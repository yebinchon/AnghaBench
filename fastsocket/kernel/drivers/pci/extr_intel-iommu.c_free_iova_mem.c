
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova {int dummy; } ;


 int iommu_iova_cache ;
 int kmem_cache_free (int ,struct iova*) ;

void free_iova_mem(struct iova *iova)
{
 kmem_cache_free(iommu_iova_cache, iova);
}
