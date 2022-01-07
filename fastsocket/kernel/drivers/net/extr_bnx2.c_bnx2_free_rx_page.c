
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct page {int dummy; } ;
struct bnx2_sw_pg {struct page* page; } ;
struct bnx2_rx_ring_info {struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int __free_page (struct page*) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int mapping ;
 int pci_unmap_addr (struct bnx2_sw_pg*,int ) ;

__attribute__((used)) static void
bnx2_free_rx_page(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u16 index)
{
 struct bnx2_sw_pg *rx_pg = &rxr->rx_pg_ring[index];
 struct page *page = rx_pg->page;

 if (!page)
  return;

 dma_unmap_page(&bp->pdev->dev, pci_unmap_addr(rx_pg, mapping),
         PAGE_SIZE, PCI_DMA_FROMDEVICE);

 __free_page(page);
 rx_pg->page = ((void*)0);
}
