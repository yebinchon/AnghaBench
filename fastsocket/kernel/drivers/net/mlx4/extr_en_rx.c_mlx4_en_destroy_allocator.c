
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {struct mlx4_en_rx_alloc* page_alloc; } ;
struct mlx4_en_rx_alloc {scalar_t__ size; scalar_t__ offset; int * page; int dma; } ;
struct mlx4_en_priv {int num_frags; int ddev; struct mlx4_en_frag_info* frag_info; } ;
struct mlx4_en_frag_info {scalar_t__ frag_stride; } ;


 int DRV ;
 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int,int ) ;
 int page_count (int *) ;
 int put_page (int *) ;

__attribute__((used)) static void mlx4_en_destroy_allocator(struct mlx4_en_priv *priv,
          struct mlx4_en_rx_ring *ring)
{
 struct mlx4_en_rx_alloc *page_alloc;
 int i;

 for (i = 0; i < priv->num_frags; i++) {
  const struct mlx4_en_frag_info *frag_info = &priv->frag_info[i];

  page_alloc = &ring->page_alloc[i];
  en_dbg(DRV, priv, "Freeing allocator:%d count:%d\n",
         i, page_count(page_alloc->page));

  dma_unmap_page(priv->ddev, page_alloc->dma,
    page_alloc->size, PCI_DMA_FROMDEVICE);
  while (page_alloc->offset + frag_info->frag_stride < page_alloc->size) {
   put_page(page_alloc->page);
   page_alloc->offset += frag_info->frag_stride;
  }
  page_alloc->page = ((void*)0);
 }
}
