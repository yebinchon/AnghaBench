
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int page_table_lock; } ;


 int flush_iotlb_page (struct iommu*,int ) ;
 size_t iopgtable_clear_entry_core (struct iommu*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

size_t iopgtable_clear_entry(struct iommu *obj, u32 da)
{
 size_t bytes;

 spin_lock(&obj->page_table_lock);

 bytes = iopgtable_clear_entry_core(obj, da);
 flush_iotlb_page(obj, da);

 spin_unlock(&obj->page_table_lock);

 return bytes;
}
