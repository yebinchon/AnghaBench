
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int PAGE_SIZE ;
 struct iommu_table* find_iommu_table (struct device*) ;
 int iommu_free (struct iommu_table*,int ,unsigned int) ;
 unsigned int iommu_num_pages (int ,size_t,int ) ;

__attribute__((used)) static void calgary_unmap_page(struct device *dev, dma_addr_t dma_addr,
          size_t size, enum dma_data_direction dir,
          struct dma_attrs *attrs)
{
 struct iommu_table *tbl = find_iommu_table(dev);
 unsigned int npages;

 npages = iommu_num_pages(dma_addr, size, PAGE_SIZE);
 iommu_free(tbl, dma_addr, npages);
}
