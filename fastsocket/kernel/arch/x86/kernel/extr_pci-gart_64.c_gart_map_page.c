
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef unsigned long phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;


 unsigned long dma_map_area (struct device*,unsigned long,size_t,int,int ) ;
 int flush_gart () ;
 int need_iommu (struct device*,unsigned long,size_t) ;
 unsigned long page_to_phys (struct page*) ;
 struct device x86_dma_fallback_dev ;

__attribute__((used)) static dma_addr_t gart_map_page(struct device *dev, struct page *page,
    unsigned long offset, size_t size,
    enum dma_data_direction dir,
    struct dma_attrs *attrs)
{
 unsigned long bus;
 phys_addr_t paddr = page_to_phys(page) + offset;

 if (!dev)
  dev = &x86_dma_fallback_dev;

 if (!need_iommu(dev, paddr, size))
  return paddr;

 bus = dma_map_area(dev, paddr, size, dir, 0);
 flush_gart();

 return bus;
}
