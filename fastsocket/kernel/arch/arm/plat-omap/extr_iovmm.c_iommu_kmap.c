
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int IOVMF_DA_ANON ;
 int IOVMF_DA_FIXED ;
 int IOVMF_HW_MASK ;
 int IOVMF_LINEAR ;
 int IOVMF_MMIO ;
 scalar_t__ IS_ERR_VALUE (int ) ;
 size_t PAGE_ALIGN (size_t) ;
 int __iommu_kmap (struct iommu*,int ,int ,void*,size_t,int ) ;
 void* ioremap (int ,size_t) ;
 int iounmap (void*) ;

u32 iommu_kmap(struct iommu *obj, u32 da, u32 pa, size_t bytes,
   u32 flags)
{
 void *va;

 if (!obj || !obj->dev || !bytes)
  return -EINVAL;

 bytes = PAGE_ALIGN(bytes);

 va = ioremap(pa, bytes);
 if (!va)
  return -ENOMEM;

 flags &= IOVMF_HW_MASK;
 flags |= IOVMF_LINEAR;
 flags |= IOVMF_MMIO;
 flags |= (da ? IOVMF_DA_FIXED : IOVMF_DA_ANON);

 da = __iommu_kmap(obj, da, pa, va, bytes, flags);
 if (IS_ERR_VALUE(da))
  iounmap(va);

 return da;
}
