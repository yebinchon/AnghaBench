
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iommu_devinfo_cache ;
 void* iommu_kmem_cache_alloc (int ) ;

__attribute__((used)) static inline void * alloc_devinfo_mem(void)
{
 return iommu_kmem_cache_alloc(iommu_devinfo_cache);
}
