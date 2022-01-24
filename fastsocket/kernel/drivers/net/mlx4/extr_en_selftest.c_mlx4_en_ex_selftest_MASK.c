#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_tx_ring {scalar_t__ prod; scalar_t__ cons; scalar_t__ last_nr_txbb; } ;
struct mlx4_en_priv {int tx_ring_num; struct mlx4_en_dev* mdev; struct mlx4_en_tx_ring* tx_ring; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int MLX4_DEV_CAP_FLAG_UC_LOOPBACK ; 
 int MLX4_EN_NUM_SELF_TEST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC2 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC3 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC4 (struct mlx4_en_priv*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct mlx4_en_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

void FUNC11(struct net_device *dev, u32 *flags, u64 *buf)
{
	struct mlx4_en_priv *priv = FUNC7(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_tx_ring *tx_ring;
	int i, carrier_ok;

	FUNC0(buf, 0, sizeof(u64) * MLX4_EN_NUM_SELF_TEST);

	if (*flags & ETH_TEST_FL_OFFLINE) {
		/* disable the interface */
		carrier_ok = FUNC9(dev);

		FUNC8(dev);
retry_tx:
		/* Wait until all tx queues are empty.
		 * there should not be any additional incoming traffic
		 * since we turned the carrier off */
		FUNC6(200);
		for (i = 0; i < priv->tx_ring_num && carrier_ok; i++) {
			tx_ring = &priv->tx_ring[i];
			if (tx_ring->prod != (tx_ring->cons + tx_ring->last_nr_txbb))
				goto retry_tx;
		}

		if (priv->mdev->dev->caps.flags &
					MLX4_DEV_CAP_FLAG_UC_LOOPBACK) {
			buf[3] = FUNC3(priv);
			buf[4] = FUNC2(priv);
		}

		if (carrier_ok)
			FUNC10(dev);

	}
	buf[0] = FUNC5(mdev->dev);
	buf[1] = FUNC1(priv);
	buf[2] = FUNC4(priv);

	for (i = 0; i < MLX4_EN_NUM_SELF_TEST; i++) {
		if (buf[i])
			*flags |= ETH_TEST_FL_FAILED;
	}
}