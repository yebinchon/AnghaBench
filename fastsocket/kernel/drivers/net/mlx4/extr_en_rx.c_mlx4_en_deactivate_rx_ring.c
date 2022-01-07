
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {scalar_t__ stride; int buf; } ;
struct mlx4_en_priv {int dummy; } ;


 scalar_t__ TXBB_SIZE ;
 int mlx4_en_destroy_allocator (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ;
 int mlx4_en_free_rx_buf (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ;

void mlx4_en_deactivate_rx_ring(struct mlx4_en_priv *priv,
    struct mlx4_en_rx_ring *ring)
{
 mlx4_en_free_rx_buf(priv, ring);
 if (ring->stride <= TXBB_SIZE)
  ring->buf -= TXBB_SIZE;
 mlx4_en_destroy_allocator(priv, ring);
}
