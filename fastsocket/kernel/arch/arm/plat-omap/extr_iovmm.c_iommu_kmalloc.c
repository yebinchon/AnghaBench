
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int IOVMF_ALLOC ;
 int IOVMF_DA_ANON ;
 int IOVMF_DA_FIXED ;
 int IOVMF_HW_MASK ;
 int IOVMF_LINEAR ;
 scalar_t__ IS_ERR_VALUE (int ) ;
 size_t PAGE_ALIGN (size_t) ;
 int __iommu_kmap (struct iommu*,int ,int ,void*,size_t,int ) ;
 int kfree (void*) ;
 void* kmalloc (size_t,int) ;
 int virt_to_phys (void*) ;

u32 iommu_kmalloc(struct iommu *obj, u32 da, size_t bytes, u32 flags)
{
 void *va;
 u32 pa;

 if (!obj || !obj->dev || !bytes)
  return -EINVAL;

 bytes = PAGE_ALIGN(bytes);

 va = kmalloc(bytes, GFP_KERNEL | GFP_DMA);
 if (!va)
  return -ENOMEM;
 pa = virt_to_phys(va);

 flags &= IOVMF_HW_MASK;
 flags |= IOVMF_LINEAR;
 flags |= IOVMF_ALLOC;
 flags |= (da ? IOVMF_DA_FIXED : IOVMF_DA_ANON);

 da = __iommu_kmap(obj, da, pa, va, bytes, flags);
 if (IS_ERR_VALUE(da))
  kfree(va);

 return da;
}
