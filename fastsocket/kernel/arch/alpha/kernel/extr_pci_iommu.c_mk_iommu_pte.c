
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;

__attribute__((used)) static inline unsigned long
mk_iommu_pte(unsigned long paddr)
{
 return (paddr >> (PAGE_SHIFT-1)) | 1;
}
