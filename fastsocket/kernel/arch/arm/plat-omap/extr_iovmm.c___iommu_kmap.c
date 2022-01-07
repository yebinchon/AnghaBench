
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sg_table {int dummy; } ;
struct iommu {int dummy; } ;


 scalar_t__ IS_ERR (struct sg_table*) ;
 scalar_t__ IS_ERR_VALUE (int ) ;
 int PTR_ERR (struct sg_table*) ;
 int map_iommu_region (struct iommu*,int ,struct sg_table*,void*,size_t,int ) ;
 struct sg_table* sgtable_alloc (size_t,int ) ;
 int sgtable_drain_kmalloc (struct sg_table*) ;
 int sgtable_fill_kmalloc (struct sg_table*,int ,size_t) ;
 int sgtable_free (struct sg_table*) ;

__attribute__((used)) static u32 __iommu_kmap(struct iommu *obj, u32 da, u32 pa, void *va,
     size_t bytes, u32 flags)
{
 struct sg_table *sgt;

 sgt = sgtable_alloc(bytes, flags);
 if (IS_ERR(sgt))
  return PTR_ERR(sgt);

 sgtable_fill_kmalloc(sgt, pa, bytes);

 da = map_iommu_region(obj, da, sgt, va, bytes, flags);
 if (IS_ERR_VALUE(da)) {
  sgtable_drain_kmalloc(sgt);
  sgtable_free(sgt);
 }

 return da;
}
