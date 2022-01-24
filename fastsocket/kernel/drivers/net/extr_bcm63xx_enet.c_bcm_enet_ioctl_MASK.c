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
struct mii_if_info {int phy_id_mask; int reg_num_mask; scalar_t__ phy_id; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct ifreq {int dummy; } ;
struct bcm_enet_priv {int /*<<< orphan*/  phydev; scalar_t__ has_phy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  bcm_enet_mdio_read_mii ; 
 int /*<<< orphan*/  bcm_enet_mdio_write_mii ; 
 int FUNC0 (struct mii_if_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 struct bcm_enet_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct bcm_enet_priv *priv;

	priv = FUNC2(dev);
	if (priv->has_phy) {
		if (!priv->phydev)
			return -ENODEV;
		return FUNC3(priv->phydev, FUNC1(rq), cmd);
	} else {
		struct mii_if_info mii;

		mii.dev = dev;
		mii.mdio_read = bcm_enet_mdio_read_mii;
		mii.mdio_write = bcm_enet_mdio_write_mii;
		mii.phy_id = 0;
		mii.phy_id_mask = 0x3f;
		mii.reg_num_mask = 0x1f;
		return FUNC0(&mii, FUNC1(rq), cmd, NULL);
	}
}