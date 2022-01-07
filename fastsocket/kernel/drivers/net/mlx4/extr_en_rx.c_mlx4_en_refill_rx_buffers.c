
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx4_en_rx_ring {int prod; int size_mask; int cons; scalar_t__ actual_size; } ;
struct mlx4_en_priv {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ mlx4_en_prepare_rx_desc (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int,int ) ;

__attribute__((used)) static void mlx4_en_refill_rx_buffers(struct mlx4_en_priv *priv,
         struct mlx4_en_rx_ring *ring)
{
 int index = ring->prod & ring->size_mask;

 while ((u32) (ring->prod - ring->cons) < ring->actual_size) {
  if (mlx4_en_prepare_rx_desc(priv, ring, index, GFP_ATOMIC))
   break;
  ring->prod++;
  index = ring->prod & ring->size_mask;
 }
}
