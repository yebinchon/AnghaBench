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
struct mlx4_en_priv {size_t port; int /*<<< orphan*/  tx_cq; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  service_task; int /*<<< orphan*/  stats_task; int /*<<< orphan*/  res; scalar_t__ allocated; scalar_t__ registered; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/ ** pndev; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  MLX4_EN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

void FUNC11(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC9(dev);
	struct mlx4_en_dev *mdev = priv->mdev;

	FUNC1(DRV, priv, "Destroying netdev on port:%d\n", priv->port);

	/* Unregister device - this will close the port if it was up */
	if (priv->registered)
		FUNC10(dev);

	if (priv->allocated)
		FUNC6(mdev->dev, &priv->res, MLX4_EN_PAGE_SIZE);

	FUNC0(&priv->stats_task);
	FUNC0(&priv->service_task);
	/* flush any pending task for this netdev */
	FUNC2(mdev->workqueue);

	/* Detach the netdev so tasks would not attempt to access it */
	FUNC7(&mdev->state_lock);
	mdev->pndev[priv->port] = NULL;
	FUNC8(&mdev->state_lock);

	FUNC5(priv);

	FUNC4(priv->tx_ring);
	FUNC4(priv->tx_cq);

	FUNC3(dev);
}