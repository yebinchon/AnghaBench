
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {int stride; int page_alloc; struct mlx4_en_rx_alloc* rx_info; struct mlx4_en_rx_desc* buf; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_rx_alloc {int dummy; } ;
struct mlx4_en_priv {int log_rx_info; } ;
typedef int gfp_t ;


 int mlx4_en_alloc_frags (struct mlx4_en_priv*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_alloc*,int ,int ) ;

__attribute__((used)) static int mlx4_en_prepare_rx_desc(struct mlx4_en_priv *priv,
       struct mlx4_en_rx_ring *ring, int index,
       gfp_t gfp)
{
 struct mlx4_en_rx_desc *rx_desc = ring->buf + (index * ring->stride);
 struct mlx4_en_rx_alloc *frags = ring->rx_info +
     (index << priv->log_rx_info);

 return mlx4_en_alloc_frags(priv, rx_desc, frags, ring->page_alloc, gfp);
}
