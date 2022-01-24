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
struct net_device {int dummy; } ;
struct mlx4_en_priv {int num_tx_rings_p_up; int tx_ring_num; scalar_t__ rx_ring_num; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;
struct ethtool_channels {int tx_count; scalar_t__ rx_count; scalar_t__ combined_count; scalar_t__ other_count; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MAX_RX_RINGS ; 
 int MLX4_EN_MAX_TX_RING_P_UP ; 
 int MLX4_EN_NUM_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,scalar_t__) ; 
 int FUNC2 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_priv*) ; 
 int FUNC4 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev,
				struct ethtool_channels *channel)
{
	struct mlx4_en_priv *priv = FUNC10(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int port_up;
	int err = 0;

	if (channel->other_count || channel->combined_count ||
	    channel->tx_count > MLX4_EN_MAX_TX_RING_P_UP ||
	    channel->rx_count > MAX_RX_RINGS ||
	    !channel->tx_count || !channel->rx_count)
		return -EINVAL;

	FUNC8(&mdev->state_lock);
	if (priv->port_up) {
		port_up = 1;
		FUNC7(dev, 1);
	}

	FUNC3(priv);

	priv->num_tx_rings_p_up = channel->tx_count;
	priv->tx_ring_num = channel->tx_count * MLX4_EN_NUM_UP;
	priv->rx_ring_num = channel->rx_count;

	err = FUNC2(priv);
	if (err) {
		FUNC0(priv, "Failed reallocating port resources\n");
		goto out;
	}

	FUNC12(dev, priv->tx_ring_num);
	FUNC11(dev, priv->rx_ring_num);

	FUNC5(dev, MLX4_EN_NUM_UP);

	FUNC1(priv, "Using %d TX rings\n", priv->tx_ring_num);
	FUNC1(priv, "Using %d RX rings\n", priv->rx_ring_num);

	if (port_up) {
		err = FUNC6(dev);
		if (err)
			FUNC0(priv, "Failed starting port\n");
	}

	err = FUNC4(priv);

out:
	FUNC9(&mdev->state_lock);
	return err;
}