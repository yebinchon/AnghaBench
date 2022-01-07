
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;
struct mlx4_en_rx_ring {struct mlx4_en_rx_alloc* page_alloc; } ;
struct mlx4_en_rx_alloc {struct page* page; int size; int dma; } ;
struct mlx4_en_priv {int num_frags; int ddev; struct mlx4_en_frag_info* frag_info; } ;
struct mlx4_en_frag_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_DMA_FROMDEVICE ;
 int atomic_set (int *,int) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 scalar_t__ mlx4_alloc_pages (struct mlx4_en_priv*,struct mlx4_en_rx_alloc*,struct mlx4_en_frag_info const*,int ) ;
 int put_page (struct page*) ;

__attribute__((used)) static int mlx4_en_init_allocator(struct mlx4_en_priv *priv,
      struct mlx4_en_rx_ring *ring)
{
 int i;
 struct mlx4_en_rx_alloc *page_alloc;

 for (i = 0; i < priv->num_frags; i++) {
  const struct mlx4_en_frag_info *frag_info = &priv->frag_info[i];

  if (mlx4_alloc_pages(priv, &ring->page_alloc[i],
         frag_info, GFP_KERNEL))
   goto out;
 }
 return 0;

out:
 while (i--) {
  struct page *page;

  page_alloc = &ring->page_alloc[i];
  dma_unmap_page(priv->ddev, page_alloc->dma,
          page_alloc->size, PCI_DMA_FROMDEVICE);
  page = page_alloc->page;
  atomic_set(&page->_count, 1);
  put_page(page);
  page_alloc->page = ((void*)0);
 }
 return -ENOMEM;
}
