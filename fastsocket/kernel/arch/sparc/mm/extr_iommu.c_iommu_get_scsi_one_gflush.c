
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int __u32 ;


 int flush_page_for_dma (int ) ;
 int iommu_get_scsi_one (struct device*,char*,unsigned long) ;

__attribute__((used)) static __u32 iommu_get_scsi_one_gflush(struct device *dev, char *vaddr, unsigned long len)
{
 flush_page_for_dma(0);
 return iommu_get_scsi_one(dev, vaddr, len);
}
