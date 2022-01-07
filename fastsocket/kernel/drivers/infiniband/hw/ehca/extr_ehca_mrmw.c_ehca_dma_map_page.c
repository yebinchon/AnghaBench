
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 unsigned long EHCA_INVAL_ADDR ;
 unsigned long PAGE_SIZE ;
 int ehca_dma_mapping_error (struct ib_device*,unsigned long) ;
 unsigned long ehca_map_vaddr (int ) ;
 int page_address (struct page*) ;

__attribute__((used)) static u64 ehca_dma_map_page(struct ib_device *dev, struct page *page,
        unsigned long offset, size_t size,
        enum dma_data_direction direction)
{
 u64 addr;

 if (offset + size > PAGE_SIZE)
  return EHCA_INVAL_ADDR;

 addr = ehca_map_vaddr(page_address(page));
 if (!ehca_dma_mapping_error(dev, addr))
  addr += offset;

 return addr;
}
