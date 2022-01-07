
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int dummy; } ;


 int IOLARGE_MASK ;
 size_t IOPGD_SIZE ;
 int IOPGD_SUPER ;
 int IOPGD_TABLE ;
 int IOPTE_LARGE ;
 size_t IOPTE_SIZE ;
 int IOSUPER_MASK ;
 int PTRS_PER_IOPTE ;
 int flush_iopgd_range (int*,int*) ;
 int flush_iopte_range (int*,int*) ;
 int* iopgd_offset (struct iommu*,int) ;
 int iopte_free (int*) ;
 int* iopte_offset (int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static size_t iopgtable_clear_entry_core(struct iommu *obj, u32 da)
{
 size_t bytes;
 u32 *iopgd = iopgd_offset(obj, da);
 int nent = 1;

 if (!*iopgd)
  return 0;

 if (*iopgd & IOPGD_TABLE) {
  int i;
  u32 *iopte = iopte_offset(iopgd, da);

  bytes = IOPTE_SIZE;
  if (*iopte & IOPTE_LARGE) {
   nent *= 16;

   iopte = (u32 *)((u32)iopte & IOLARGE_MASK);
  }
  bytes *= nent;
  memset(iopte, 0, nent * sizeof(*iopte));
  flush_iopte_range(iopte, iopte + (nent - 1) * sizeof(*iopte));




  iopte = iopte_offset(iopgd, 0);
  for (i = 0; i < PTRS_PER_IOPTE; i++)
   if (iopte[i])
    goto out;

  iopte_free(iopte);
  nent = 1;
 } else {
  bytes = IOPGD_SIZE;
  if ((*iopgd & IOPGD_SUPER) == IOPGD_SUPER) {
   nent *= 16;

   iopgd = (u32 *)((u32)iopgd & IOSUPER_MASK);
  }
  bytes *= nent;
 }
 memset(iopgd, 0, nent * sizeof(*iopgd));
 flush_iopgd_range(iopgd, iopgd + (nent - 1) * sizeof(*iopgd));
out:
 return bytes;
}
