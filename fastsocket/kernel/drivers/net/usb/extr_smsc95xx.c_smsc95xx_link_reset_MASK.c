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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mii_if_info {int /*<<< orphan*/  phy_id; } ;
struct usbnet {int /*<<< orphan*/  net; struct mii_if_info mii; scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; int /*<<< orphan*/  mac_cr_lock; } ;
struct ethtool_cmd {scalar_t__ duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  INT_STS ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_FDPX_ ; 
 int MAC_CR_RCVOWN_ ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_LPA ; 
 int /*<<< orphan*/  PHY_INT_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_if_info*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_if_info*,struct ethtool_cmd*) ; 
 scalar_t__ FUNC3 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct usbnet *dev)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	struct mii_if_info *mii = &dev->mii;
	struct ethtool_cmd ecmd;
	unsigned long flags;
	u16 lcladv, rmtadv;
	u32 intdata;

	/* clear interrupt status */
	FUNC4(dev->net, mii->phy_id, PHY_INT_SRC);
	intdata = 0xFFFFFFFF;
	FUNC6(dev, INT_STS, intdata);

	FUNC1(mii, 1, 1);
	FUNC2(&dev->mii, &ecmd);
	lcladv = FUNC4(dev->net, mii->phy_id, MII_ADVERTISE);
	rmtadv = FUNC4(dev->net, mii->phy_id, MII_LPA);

	if (FUNC3(dev))
		FUNC0(dev, "speed: %d duplex: %d lcladv: %04x rmtadv: %04x",
			ecmd.speed, ecmd.duplex, lcladv, rmtadv);

	FUNC7(&pdata->mac_cr_lock, flags);
	if (ecmd.duplex != DUPLEX_FULL) {
		pdata->mac_cr &= ~MAC_CR_FDPX_;
		pdata->mac_cr |= MAC_CR_RCVOWN_;
	} else {
		pdata->mac_cr &= ~MAC_CR_RCVOWN_;
		pdata->mac_cr |= MAC_CR_FDPX_;
	}
	FUNC8(&pdata->mac_cr_lock, flags);

	FUNC6(dev, MAC_CR, pdata->mac_cr);

	FUNC5(dev, ecmd.duplex, lcladv, rmtadv);

	return 0;
}