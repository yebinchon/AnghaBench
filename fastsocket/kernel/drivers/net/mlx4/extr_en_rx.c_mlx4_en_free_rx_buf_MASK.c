#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct mlx4_en_rx_ring {int cons; int prod; scalar_t__ actual_size; int size_mask; } ;
struct mlx4_en_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int) ; 

__attribute__((used)) static void FUNC3(struct mlx4_en_priv *priv,
				struct mlx4_en_rx_ring *ring)
{
	int index;

	FUNC1(DRV, priv, "Freeing Rx buf - cons:%d prod:%d\n",
	       ring->cons, ring->prod);

	/* Unmap and free Rx buffers */
	FUNC0((u32) (ring->prod - ring->cons) > ring->actual_size);
	while (ring->cons != ring->prod) {
		index = ring->cons & ring->size_mask;
		FUNC1(DRV, priv, "Processing descriptor:%d\n", index);
		FUNC2(priv, ring, index);
		++ring->cons;
	}
}