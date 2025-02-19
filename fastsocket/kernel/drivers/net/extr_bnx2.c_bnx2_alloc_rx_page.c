
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u16 ;
struct page {int dummy; } ;
struct bnx2_sw_pg {struct page* page; } ;
struct bnx2_rx_ring_info {struct bnx2_rx_bd** rx_pg_desc_ring; struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2_rx_bd {int rx_bd_haddr_hi; int rx_bd_haddr_lo; } ;
struct bnx2 {TYPE_1__* pdev; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 size_t BNX2_RX_IDX (size_t) ;
 size_t BNX2_RX_RING (size_t) ;
 int EIO ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 scalar_t__ dma_map_page (int *,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int pci_unmap_addr_set (struct bnx2_sw_pg*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int
bnx2_alloc_rx_page(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u16 index, gfp_t gfp)
{
 dma_addr_t mapping;
 struct bnx2_sw_pg *rx_pg = &rxr->rx_pg_ring[index];
 struct bnx2_rx_bd *rxbd =
  &rxr->rx_pg_desc_ring[BNX2_RX_RING(index)][BNX2_RX_IDX(index)];
 struct page *page = alloc_page(gfp);

 if (!page)
  return -ENOMEM;
 mapping = dma_map_page(&bp->pdev->dev, page, 0, PAGE_SIZE,
          PCI_DMA_FROMDEVICE);
 if (dma_mapping_error(&bp->pdev->dev, mapping)) {
  __free_page(page);
  return -EIO;
 }

 rx_pg->page = page;
 pci_unmap_addr_set(rx_pg, mapping, mapping);
 rxbd->rx_bd_haddr_hi = (u64) mapping >> 32;
 rxbd->rx_bd_haddr_lo = (u64) mapping & 0xffffffff;
 return 0;
}
