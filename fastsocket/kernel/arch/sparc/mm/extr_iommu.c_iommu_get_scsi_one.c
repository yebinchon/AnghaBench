
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct page {int dummy; } ;
struct device {int dummy; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 scalar_t__ iommu_get_one (struct device*,struct page*,int) ;
 struct page* virt_to_page (unsigned long) ;

__attribute__((used)) static u32 iommu_get_scsi_one(struct device *dev, char *vaddr, unsigned int len)
{
 unsigned long off;
 int npages;
 struct page *page;
 u32 busa;

 off = (unsigned long)vaddr & ~PAGE_MASK;
 npages = (off + len + PAGE_SIZE-1) >> PAGE_SHIFT;
 page = virt_to_page((unsigned long)vaddr & PAGE_MASK);
 busa = iommu_get_one(dev, page, npages);
 return busa + off;
}
