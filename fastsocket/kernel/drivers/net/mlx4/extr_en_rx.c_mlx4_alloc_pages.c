
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;
struct mlx4_en_rx_alloc {int size; int offset; int dma; struct page* page; } ;
struct mlx4_en_priv {int ddev; } ;
struct mlx4_en_frag_info {int frag_size; int frag_stride; int frag_align; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int MLX4_EN_ALLOC_PREFER_ORDER ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 struct page* alloc_pages (int,int) ;
 int atomic_set (int *,int) ;
 int dma_map_page (int ,struct page*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ likely (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int mlx4_alloc_pages(struct mlx4_en_priv *priv,
       struct mlx4_en_rx_alloc *page_alloc,
       const struct mlx4_en_frag_info *frag_info,
       gfp_t _gfp)
{
 int order;
 struct page *page;
 dma_addr_t dma;

 for (order = MLX4_EN_ALLOC_PREFER_ORDER; ;) {
  gfp_t gfp = _gfp;

  if (order)
   gfp |= __GFP_COMP | __GFP_NOWARN;
  page = alloc_pages(gfp, order);
  if (likely(page))
   break;
  if (--order < 0 ||
      ((PAGE_SIZE << order) < frag_info->frag_size))
   return -ENOMEM;
 }
 dma = dma_map_page(priv->ddev, page, 0, PAGE_SIZE << order,
      PCI_DMA_FROMDEVICE);
 if (dma_mapping_error(priv->ddev, dma)) {
  put_page(page);
  return -ENOMEM;
 }
 page_alloc->size = PAGE_SIZE << order;
 page_alloc->page = page;
 page_alloc->dma = dma;
 page_alloc->offset = frag_info->frag_align;



 atomic_set(&page->_count, page_alloc->size / frag_info->frag_stride);
 return 0;
}
