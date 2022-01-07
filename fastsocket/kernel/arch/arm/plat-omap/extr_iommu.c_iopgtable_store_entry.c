
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iotlb_entry {int da; } ;
struct iommu {int dummy; } ;


 int flush_iotlb_page (struct iommu*,int ) ;
 int iopgtable_store_entry_core (struct iommu*,struct iotlb_entry*) ;
 int load_iotlb_entry (struct iommu*,struct iotlb_entry*) ;

int iopgtable_store_entry(struct iommu *obj, struct iotlb_entry *e)
{
 int err;

 flush_iotlb_page(obj, e->da);
 err = iopgtable_store_entry_core(obj, e);




 return err;
}
