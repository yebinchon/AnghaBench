
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iommu_table {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int PAGE_SIZE ;
 struct iommu_table* find_iommu_table (struct device*) ;
 int iommu_alloc (struct device*,struct iommu_table*,void*,unsigned int,int) ;
 unsigned int iommu_num_pages (unsigned long,size_t,int ) ;
 void* page_address (struct page*) ;

__attribute__((used)) static dma_addr_t calgary_map_page(struct device *dev, struct page *page,
       unsigned long offset, size_t size,
       enum dma_data_direction dir,
       struct dma_attrs *attrs)
{
 void *vaddr = page_address(page) + offset;
 unsigned long uaddr;
 unsigned int npages;
 struct iommu_table *tbl = find_iommu_table(dev);

 uaddr = (unsigned long)vaddr;
 npages = iommu_num_pages(uaddr, size, PAGE_SIZE);

 return iommu_alloc(dev, tbl, vaddr, npages, dir);
}
