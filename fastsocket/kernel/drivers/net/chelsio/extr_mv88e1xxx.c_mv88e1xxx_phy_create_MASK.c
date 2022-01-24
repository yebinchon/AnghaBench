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
struct net_device {int dummy; } ;
struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int caps; scalar_t__ chip_phy; } ;

/* Variables and functions */
 scalar_t__ CHBT_PHY_88E1111 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MV88E1XXX_EXTENDED_ADDR_REGISTER ; 
 int /*<<< orphan*/  MV88E1XXX_EXTENDED_REGISTER ; 
 int /*<<< orphan*/  MV88E1XXX_LED_CONTROL_REGISTER ; 
 int SUPPORTED_TP ; 
 TYPE_1__* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,struct net_device*,int,int /*<<< orphan*/ *,struct mdio_ops const*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 struct cphy* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cphy*,int) ; 
 int /*<<< orphan*/  mv88e1xxx_ops ; 
 struct adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct cphy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct cphy *FUNC7(struct net_device *dev, int phy_addr,
					 const struct mdio_ops *mdio_ops)
{
	struct adapter *adapter = FUNC5(dev);
	struct cphy *cphy = FUNC3(sizeof(*cphy), GFP_KERNEL);

	if (!cphy)
		return NULL;

	FUNC1(cphy, dev, phy_addr, &mv88e1xxx_ops, mdio_ops);

	/* Configure particular PHY's to run in a different mode. */
	if ((FUNC0(adapter)->caps & SUPPORTED_TP) &&
	    FUNC0(adapter)->chip_phy == CHBT_PHY_88E1111) {
		/*
		 * Configure the PHY transmitter as class A to reduce EMI.
		 */
		(void) FUNC6(cphy,
				MV88E1XXX_EXTENDED_ADDR_REGISTER, 0xB);
		(void) FUNC6(cphy,
				MV88E1XXX_EXTENDED_REGISTER, 0x8004);
	}
	(void) FUNC4(cphy, 1);   /* Enable downshift */

	/* LED */
	if (FUNC2(adapter)) {
		(void) FUNC6(cphy,
				MV88E1XXX_LED_CONTROL_REGISTER, 0x1);
	}

	return cphy;
}