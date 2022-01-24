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
typedef  int u16 ;
struct phy_device {scalar_t__ interface; } ;

/* Variables and functions */
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int ret;

	/* Aneg firsly. */
	ret = FUNC0(phydev);

	/* Then we can set up the delay. */
	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {
		u16 reg;

		/*
		 * There is no BCM5481 specification available, so down
		 * here is everything we know about "register 0x18". This
		 * at least helps BCM5481 to successfuly receive packets
		 * on MPC8360E-RDK board. Peter Barada <peterb@logicpd.com>
		 * says: "This sets delay between the RXD and RXC signals
		 * instead of using trace lengths to achieve timing".
		 */

		/* Set RDX clk delay. */
		reg = 0x7 | (0x7 << 12);
		FUNC2(phydev, 0x18, reg);

		reg = FUNC1(phydev, 0x18);
		/* Set RDX-RXC skew. */
		reg |= (1 << 8);
		/* Write bits 14:0. */
		reg |= (1 << 15);
		FUNC2(phydev, 0x18, reg);
	}

	return ret;
}