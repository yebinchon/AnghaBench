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
typedef  int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_addr; int phy_id; scalar_t__ phy_speed; scalar_t__ hwp; } ;

/* Variables and functions */
 scalar_t__ FEC_MII_SPEED ; 
 int /*<<< orphan*/  MII_REG_PHYIR1 ; 
 int /*<<< orphan*/  MII_REG_PHYIR2 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 void FUNC1 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,void (*) (int,struct net_device*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(uint mii_reg, struct net_device *dev)
{
	struct fec_enet_private *fep;
	uint phytype;

	fep = FUNC4(dev);

	if (fep->phy_addr < 32) {
		if ((phytype = (mii_reg & 0xffff)) != 0xffff && phytype != 0) {

			/* Got first part of ID, now get remainder */
			fep->phy_id = phytype << 16;
			FUNC2(dev, FUNC3(MII_REG_PHYIR2),
							mii_discover_phy3);
		} else {
			fep->phy_addr++;
			FUNC2(dev, FUNC3(MII_REG_PHYIR1),
							mii_discover_phy);
		}
	} else {
		FUNC5("FEC: No PHY device found.\n");
		/* Disable external MII interface */
		FUNC6(0, fep->hwp + FEC_MII_SPEED);
		fep->phy_speed = 0;
#ifdef HAVE_mii_link_interrupt
		fec_disable_phy_intr(dev);
#endif
	}
}