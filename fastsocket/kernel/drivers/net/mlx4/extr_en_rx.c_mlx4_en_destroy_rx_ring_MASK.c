#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct mlx4_en_rx_ring {int /*<<< orphan*/ * rx_info; TYPE_1__ wqres; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ TXBB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx4_en_priv *priv,
			     struct mlx4_en_rx_ring *ring, u32 size, u16 stride)
{
	struct mlx4_en_dev *mdev = priv->mdev;

	FUNC1(&ring->wqres.buf);
	FUNC2(mdev->dev, &ring->wqres, size * stride + TXBB_SIZE);
	FUNC3(ring->rx_info);
	ring->rx_info = NULL;
#ifdef CONFIG_RFS_ACCEL
	mlx4_en_cleanup_filters(priv, ring);
#endif
}