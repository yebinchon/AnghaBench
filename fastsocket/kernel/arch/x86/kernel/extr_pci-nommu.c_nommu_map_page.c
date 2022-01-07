
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int WARN_ON (int) ;
 scalar_t__ bad_dma_address ;
 int check_addr (char*,struct device*,scalar_t__,size_t) ;
 int flush_write_buffers () ;
 scalar_t__ page_to_phys (struct page*) ;

__attribute__((used)) static dma_addr_t nommu_map_page(struct device *dev, struct page *page,
     unsigned long offset, size_t size,
     enum dma_data_direction dir,
     struct dma_attrs *attrs)
{
 dma_addr_t bus = page_to_phys(page) + offset;
 WARN_ON(size == 0);
 if (!check_addr("map_single", dev, bus, size))
  return bad_dma_address;
 flush_write_buffers();
 return bus;
}
