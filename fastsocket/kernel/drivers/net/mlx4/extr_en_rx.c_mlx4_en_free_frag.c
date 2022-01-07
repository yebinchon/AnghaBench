
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx4_en_rx_alloc {scalar_t__ offset; scalar_t__ size; scalar_t__ page; int dma; } ;
struct mlx4_en_priv {int ddev; struct mlx4_en_frag_info* frag_info; } ;
struct mlx4_en_frag_info {int frag_stride; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int put_page (scalar_t__) ;

__attribute__((used)) static void mlx4_en_free_frag(struct mlx4_en_priv *priv,
         struct mlx4_en_rx_alloc *frags,
         int i)
{
 const struct mlx4_en_frag_info *frag_info = &priv->frag_info[i];
 u32 next_frag_end = frags[i].offset + 2 * frag_info->frag_stride;

 if (next_frag_end > frags[i].size)
  dma_unmap_page(priv->ddev, frags[i].dma, frags[i].size,
      PCI_DMA_FROMDEVICE);

 if (frags[i].page)
  put_page(frags[i].page);
}
