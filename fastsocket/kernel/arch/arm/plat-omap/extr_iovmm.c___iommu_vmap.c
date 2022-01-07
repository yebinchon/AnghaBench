
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sg_table {int dummy; } ;
struct iommu {int dummy; } ;


 int map_iommu_region (struct iommu*,int ,struct sg_table const*,void*,size_t,int ) ;

__attribute__((used)) static inline u32 __iommu_vmap(struct iommu *obj, u32 da,
   const struct sg_table *sgt, void *va, size_t bytes, u32 flags)
{
 return map_iommu_region(obj, da, sgt, va, bytes, flags);
}
