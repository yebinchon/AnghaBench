
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu {unsigned long iommu_flushinv; unsigned long iommu_tags; int write_complete_reg; } ;


 int iommu_read (int ) ;
 int iommu_write (unsigned long,int ) ;

__attribute__((used)) static void iommu_flushall(struct iommu *iommu)
{
 if (iommu->iommu_flushinv) {
  iommu_write(iommu->iommu_flushinv, ~(u64)0);
 } else {
  unsigned long tag;
  int entry;

  tag = iommu->iommu_tags;
  for (entry = 0; entry < 16; entry++) {
   iommu_write(tag, 0);
   tag += 8;
  }


  (void) iommu_read(iommu->write_complete_reg);
 }
}
