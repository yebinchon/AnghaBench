
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sg_table {int dummy; } ;
struct iommu {int dev; } ;


 int EINVAL ;
 int IOVMF_DA_ANON ;
 int IOVMF_DA_FIXED ;
 int IOVMF_DISCONT ;
 int IOVMF_HW_MASK ;
 int IOVMF_MMIO ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ IS_ERR_VALUE (int ) ;
 size_t PAGE_ALIGN (size_t) ;
 int PTR_ERR (void*) ;
 int __iommu_vmap (struct iommu*,int ,struct sg_table const*,void*,size_t,int ) ;
 size_t sgtable_len (struct sg_table const*) ;
 void* vmap_sg (struct sg_table const*) ;
 int vunmap_sg (void*) ;

u32 iommu_vmap(struct iommu *obj, u32 da, const struct sg_table *sgt,
   u32 flags)
{
 size_t bytes;
 void *va;

 if (!obj || !obj->dev || !sgt)
  return -EINVAL;

 bytes = sgtable_len(sgt);
 if (!bytes)
  return -EINVAL;
 bytes = PAGE_ALIGN(bytes);

 va = vmap_sg(sgt);
 if (IS_ERR(va))
  return PTR_ERR(va);

 flags &= IOVMF_HW_MASK;
 flags |= IOVMF_DISCONT;
 flags |= IOVMF_MMIO;
 flags |= (da ? IOVMF_DA_FIXED : IOVMF_DA_ANON);

 da = __iommu_vmap(obj, da, sgt, va, bytes, flags);
 if (IS_ERR_VALUE(da))
  vunmap_sg(va);

 return da;
}
