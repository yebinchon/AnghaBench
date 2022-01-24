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
struct net_device {int mtu; } ;
struct mlx4_en_priv {int max_mtu; int port; int /*<<< orphan*/  watchdog_task; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  device_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int EPERM ; 
 int MLX4_EN_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,int) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, int new_mtu)
{
	struct mlx4_en_priv *priv = FUNC6(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err = 0;

	FUNC0(DRV, priv, "Change MTU called - current:%d new:%d\n",
		 dev->mtu, new_mtu);

	if ((new_mtu < MLX4_EN_MIN_MTU) || (new_mtu > priv->max_mtu)) {
		FUNC1(priv, "Bad MTU size:%d.\n", new_mtu);
		return -EPERM;
	}
	dev->mtu = new_mtu;

	if (FUNC7(dev)) {
		FUNC4(&mdev->state_lock);
		if (!mdev->device_up) {
			/* NIC is probably restarting - let watchdog task reset
			 * the port */
			FUNC0(DRV, priv, "Change MTU called with card down!?\n");
		} else {
			FUNC3(dev, 1);
			err = FUNC2(dev);
			if (err) {
				FUNC1(priv, "Failed restarting port:%d\n",
					 priv->port);
				FUNC8(mdev->workqueue, &priv->watchdog_task);
			}
		}
		FUNC5(&mdev->state_lock);
	}
	return 0;
}