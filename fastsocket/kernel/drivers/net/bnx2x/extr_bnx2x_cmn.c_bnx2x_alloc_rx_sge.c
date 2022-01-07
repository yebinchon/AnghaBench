
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sw_rx_page {struct page* page; } ;
struct page {int dummy; } ;
struct eth_rx_sge {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {struct eth_rx_sge* rx_sge_ring; struct sw_rx_page* rx_page_ring; } ;
struct bnx2x {TYPE_1__* pdev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int BNX2X_ERR (char*) ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int PAGES_PER_SGE_SHIFT ;
 int SGE_PAGES ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int ,int ) ;
 void* cpu_to_le32 (int ) ;
 int dma_map_page (int *,struct page*,int ,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 int dma_unmap_addr_set (struct sw_rx_page*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int bnx2x_alloc_rx_sge(struct bnx2x *bp, struct bnx2x_fastpath *fp,
         u16 index, gfp_t gfp_mask)
{
 struct page *page = alloc_pages(gfp_mask, PAGES_PER_SGE_SHIFT);
 struct sw_rx_page *sw_buf = &fp->rx_page_ring[index];
 struct eth_rx_sge *sge = &fp->rx_sge_ring[index];
 dma_addr_t mapping;

 if (unlikely(page == ((void*)0))) {
  BNX2X_ERR("Can't alloc sge\n");
  return -ENOMEM;
 }

 mapping = dma_map_page(&bp->pdev->dev, page, 0,
          SGE_PAGES, DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(&bp->pdev->dev, mapping))) {
  __free_pages(page, PAGES_PER_SGE_SHIFT);
  BNX2X_ERR("Can't map sge\n");
  return -ENOMEM;
 }

 sw_buf->page = page;
 dma_unmap_addr_set(sw_buf, mapping, mapping);

 sge->addr_hi = cpu_to_le32(U64_HI(mapping));
 sge->addr_lo = cpu_to_le32(U64_LO(mapping));

 return 0;
}
