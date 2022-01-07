
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int __u32 ;


 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int flush_page_for_dma (unsigned long) ;
 int iommu_get_scsi_one (struct device*,char*,unsigned long) ;

__attribute__((used)) static __u32 iommu_get_scsi_one_pflush(struct device *dev, char *vaddr, unsigned long len)
{
 unsigned long page = ((unsigned long) vaddr) & PAGE_MASK;

 while(page < ((unsigned long)(vaddr + len))) {
  flush_page_for_dma(page);
  page += PAGE_SIZE;
 }
 return iommu_get_scsi_one(dev, vaddr, len);
}
