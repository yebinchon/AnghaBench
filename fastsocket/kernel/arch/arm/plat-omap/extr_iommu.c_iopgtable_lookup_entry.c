
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int dummy; } ;


 int IOPGD_TABLE ;
 int* iopgd_offset (struct iommu*,int) ;
 int* iopte_offset (int*,int) ;

void iopgtable_lookup_entry(struct iommu *obj, u32 da, u32 **ppgd, u32 **ppte)
{
 u32 *iopgd, *iopte = ((void*)0);

 iopgd = iopgd_offset(obj, da);
 if (!*iopgd)
  goto out;

 if (*iopgd & IOPGD_TABLE)
  iopte = iopte_offset(iopgd, da);
out:
 *ppgd = iopgd;
 *ppte = iopte;
}
