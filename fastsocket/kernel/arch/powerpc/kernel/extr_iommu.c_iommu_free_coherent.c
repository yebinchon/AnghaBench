
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;
typedef int dma_addr_t ;


 size_t IOMMU_PAGE_SHIFT ;
 size_t PAGE_ALIGN (size_t) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int iommu_free (struct iommu_table*,int ,unsigned int) ;

void iommu_free_coherent(struct iommu_table *tbl, size_t size,
    void *vaddr, dma_addr_t dma_handle)
{
 if (tbl) {
  unsigned int nio_pages;

  size = PAGE_ALIGN(size);
  nio_pages = size >> IOMMU_PAGE_SHIFT;
  iommu_free(tbl, dma_handle, nio_pages);
  size = PAGE_ALIGN(size);
  free_pages((unsigned long)vaddr, get_order(size));
 }
}
