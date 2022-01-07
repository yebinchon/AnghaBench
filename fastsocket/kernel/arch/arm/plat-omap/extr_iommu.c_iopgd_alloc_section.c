
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int dummy; } ;


 int IOPGD_SECTION ;
 int IOSECTION_MASK ;
 int flush_iopgd_range (int*,int*) ;
 int* iopgd_offset (struct iommu*,int) ;

__attribute__((used)) static int iopgd_alloc_section(struct iommu *obj, u32 da, u32 pa, u32 prot)
{
 u32 *iopgd = iopgd_offset(obj, da);

 *iopgd = (pa & IOSECTION_MASK) | prot | IOPGD_SECTION;
 flush_iopgd_range(iopgd, iopgd);
 return 0;
}
