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
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  port; scalar_t__ port_up; struct vlan_group* vlgrp; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; scalar_t__ device_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,struct vlan_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vlan_group*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, struct vlan_group *grp)
{
	struct mlx4_en_priv *priv = FUNC5(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;

	FUNC0(HW, priv, "Registering VLAN group:%p\n", grp);
	priv->vlgrp = grp;

	FUNC3(&mdev->state_lock);
	if (mdev->device_up && priv->port_up) {
		err = FUNC2(mdev->dev, priv->port, grp);
		if (err)
			FUNC1(priv, "Failed configuring VLAN filter\n");
	}
	FUNC4(&mdev->state_lock);
}