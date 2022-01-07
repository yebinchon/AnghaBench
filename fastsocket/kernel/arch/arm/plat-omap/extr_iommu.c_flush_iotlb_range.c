
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iommu {int dummy; } ;


 scalar_t__ IOPTE_SIZE ;
 int flush_iotlb_page (struct iommu*,scalar_t__) ;

void flush_iotlb_range(struct iommu *obj, u32 start, u32 end)
{
 u32 da = start;

 while (da < end) {
  flush_iotlb_page(obj, da);

  da += IOPTE_SIZE;
 }
}
