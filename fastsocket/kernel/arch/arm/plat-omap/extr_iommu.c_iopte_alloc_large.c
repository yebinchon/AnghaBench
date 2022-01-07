
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int dummy; } ;


 int IOLARGE_MASK ;
 int IOPTE_LARGE ;
 scalar_t__ IS_ERR (int*) ;
 int PTR_ERR (int*) ;
 int flush_iopte_range (int*,int*) ;
 int* iopgd_offset (struct iommu*,int) ;
 int* iopte_alloc (struct iommu*,int*,int) ;

__attribute__((used)) static int iopte_alloc_large(struct iommu *obj, u32 da, u32 pa, u32 prot)
{
 u32 *iopgd = iopgd_offset(obj, da);
 u32 *iopte = iopte_alloc(obj, iopgd, da);
 int i;

 if (IS_ERR(iopte))
  return PTR_ERR(iopte);

 for (i = 0; i < 16; i++)
  *(iopte + i) = (pa & IOLARGE_MASK) | prot | IOPTE_LARGE;
 flush_iopte_range(iopte, iopte + 15);
 return 0;
}
