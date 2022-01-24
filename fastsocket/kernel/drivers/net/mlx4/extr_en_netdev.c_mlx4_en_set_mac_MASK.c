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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, void *addr)
{
	struct mlx4_en_priv *priv = FUNC5(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct sockaddr *saddr = addr;
	int err;

	if (!FUNC0(saddr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(dev->dev_addr, saddr->sa_data, ETH_ALEN);

	FUNC3(&mdev->state_lock);
	err = FUNC2(priv);
	FUNC4(&mdev->state_lock);

	return err;
}