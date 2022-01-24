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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int phy_id_mask; int reg_num_mask; } ;
struct usbnet {int /*<<< orphan*/  phy_mutex; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MII_ADDR ; 
 int /*<<< orphan*/  MII_DATA ; 
 int MII_READ_ ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int phy_id, int idx)
{
	struct usbnet *dev = FUNC3(netdev);
	u32 val, addr;

	FUNC1(&dev->phy_mutex);

	/* confirm MII not busy */
	if (FUNC4(dev)) {
		FUNC0(dev, "MII is busy in smsc95xx_mdio_read");
		FUNC2(&dev->phy_mutex);
		return -EIO;
	}

	/* set the address, index & direction (read from PHY) */
	phy_id &= dev->mii.phy_id_mask;
	idx &= dev->mii.reg_num_mask;
	addr = (phy_id << 11) | (idx << 6) | MII_READ_;
	FUNC6(dev, MII_ADDR, addr);

	if (FUNC4(dev)) {
		FUNC0(dev, "Timed out reading MII reg %02X", idx);
		FUNC2(&dev->phy_mutex);
		return -EIO;
	}

	FUNC5(dev, MII_DATA, &val);

	FUNC2(&dev->phy_mutex);

	return (u16)(val & 0xFFFF);
}