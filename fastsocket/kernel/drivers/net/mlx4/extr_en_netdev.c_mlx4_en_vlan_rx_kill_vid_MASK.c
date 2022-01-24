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
struct mlx4_en_priv {int /*<<< orphan*/  vlgrp; int /*<<< orphan*/  port; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; scalar_t__ device_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev, unsigned short vid)
{
	struct mlx4_en_priv *priv = FUNC7(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;
	int idx;

	if (!priv->vlgrp)
		return;

	FUNC0(HW, priv, "Killing VID:%d (vlgrp:%p vlgrp entry:%p)\n",
	       vid, priv->vlgrp, FUNC8(priv->vlgrp, vid));
	FUNC9(priv->vlgrp, vid, NULL);

	/* Remove VID from port VLAN filter */
	FUNC5(&mdev->state_lock);
	if (!FUNC3(mdev->dev, priv->port, vid, &idx))
		FUNC4(mdev->dev, priv->port, idx);
	else
		FUNC0(HW, priv, "could not find vid %d in cache\n", vid);

	if (mdev->device_up && priv->port_up) {
		err = FUNC2(mdev->dev, priv->port, priv->vlgrp);
		if (err)
			FUNC1(priv, "Failed configuring VLAN filter\n");
	}
	FUNC6(&mdev->state_lock);
}