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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct mlx4_en_tx_ring {int /*<<< orphan*/ * tx_info; int /*<<< orphan*/ * bounce_buf; int /*<<< orphan*/  buf_size; TYPE_1__ wqres; int /*<<< orphan*/  qp; int /*<<< orphan*/  bf; scalar_t__ bf_enabled; int /*<<< orphan*/  qpn; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct mlx4_en_priv *priv,
			     struct mlx4_en_tx_ring *ring)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	FUNC0(DRV, priv, "Destroying tx ring, qpn: %d\n", ring->qpn);

	if (ring->bf_enabled)
		FUNC2(mdev->dev, &ring->bf);
	FUNC6(mdev->dev, &ring->qp);
	FUNC5(mdev->dev, &ring->qp);
	FUNC3(&ring->wqres.buf);
	FUNC4(mdev->dev, &ring->wqres, ring->buf_size);
	FUNC1(ring->bounce_buf);
	ring->bounce_buf = NULL;
	FUNC7(ring->tx_info);
	ring->tx_info = NULL;
}