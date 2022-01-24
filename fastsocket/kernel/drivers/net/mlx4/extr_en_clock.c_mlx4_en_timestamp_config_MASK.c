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
struct net_device {int /*<<< orphan*/  features; } ;
struct TYPE_2__ {int tx_type; int rx_filter; } ;
struct mlx4_en_priv {TYPE_1__ hwtstamp_config; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int HWTSTAMP_FILTER_NONE ; 
 int /*<<< orphan*/  NETIF_F_HW_VLAN_RX ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_priv*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct mlx4_en_priv* FUNC9 (struct net_device*) ; 

int FUNC10(struct net_device *dev, int tx_type, int rx_filter)
{
	struct mlx4_en_priv *priv = FUNC9(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int port_up = 0;
	int err = 0;

	FUNC6(&mdev->state_lock);
	if (priv->port_up) {
		port_up = 1;
		FUNC5(dev, 1);
	}

	FUNC3(priv);

	FUNC1(priv, "Changing Time Stamp configuration\n");

	priv->hwtstamp_config.tx_type = tx_type;
	priv->hwtstamp_config.rx_filter = rx_filter;

	if (rx_filter != HWTSTAMP_FILTER_NONE)
		dev->features &= ~NETIF_F_HW_VLAN_RX;
	else
		dev->features |= NETIF_F_HW_VLAN_RX;

	err = FUNC2(priv);
	if (err) {
		FUNC0(priv, "Failed reallocating port resources\n");
		goto out;
	}
	if (port_up) {
		err = FUNC4(dev);
		if (err)
			FUNC0(priv, "Failed starting port\n");
	}

out:
	FUNC7(&mdev->state_lock);
	FUNC8(dev);
	return err;
}