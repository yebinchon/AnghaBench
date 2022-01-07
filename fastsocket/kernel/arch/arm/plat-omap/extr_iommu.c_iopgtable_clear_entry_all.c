
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int page_table_lock; } ;


 int IOPGD_SHIFT ;
 int IOPGD_TABLE ;
 int PTRS_PER_IOPGD ;
 int flush_iopgd_range (int*,int*) ;
 int flush_iotlb_all (struct iommu*) ;
 int* iopgd_offset (struct iommu*,int) ;
 int iopte_free (int ) ;
 int iopte_offset (int*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iopgtable_clear_entry_all(struct iommu *obj)
{
 int i;

 spin_lock(&obj->page_table_lock);

 for (i = 0; i < PTRS_PER_IOPGD; i++) {
  u32 da;
  u32 *iopgd;

  da = i << IOPGD_SHIFT;
  iopgd = iopgd_offset(obj, da);

  if (!*iopgd)
   continue;

  if (*iopgd & IOPGD_TABLE)
   iopte_free(iopte_offset(iopgd, 0));

  *iopgd = 0;
  flush_iopgd_range(iopgd, iopgd);
 }

 flush_iotlb_all(obj);

 spin_unlock(&obj->page_table_lock);
}
