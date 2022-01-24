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
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; scalar_t__ rx_skb_size; int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct TYPE_2__ {int tx_pause; int rx_pause; int /*<<< orphan*/  rx_ppp; int /*<<< orphan*/  tx_ppp; } ;

/* Variables and functions */
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mlx4_en_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				struct ethtool_pauseparam *pause)
{
	struct mlx4_en_priv *priv = FUNC2(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;

	priv->prof->tx_pause = pause->tx_pause != 0;
	priv->prof->rx_pause = pause->rx_pause != 0;
	err = FUNC1(mdev->dev, priv->port,
				    priv->rx_skb_size + ETH_FCS_LEN,
				    priv->prof->tx_pause,
				    priv->prof->tx_ppp,
				    priv->prof->rx_pause,
				    priv->prof->rx_ppp);
	if (err)
		FUNC0(priv, "Failed setting pause params\n");

	return err;
}