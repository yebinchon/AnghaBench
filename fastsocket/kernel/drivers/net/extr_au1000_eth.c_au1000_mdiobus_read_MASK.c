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
struct mii_bus {struct net_device* priv; } ;

/* Variables and functions */
 int FUNC0 (struct net_device* const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus, int phy_addr, int regnum)
{
	/* WARNING: bus->phy_map[phy_addr].attached_dev == dev does
	 * _NOT_ hold (e.g. when PHY is accessed through other MAC's MII bus) */
	struct net_device *const dev = bus->priv;

	FUNC1(dev, 0); /* make sure the MAC associated with this
			     * mii_bus is enabled */
	return FUNC0(dev, phy_addr, regnum);
}