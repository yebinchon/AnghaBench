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
struct bnx2 {int link_up; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  mii_bmcr; } ;

/* Variables and functions */
 int BMCR_FULLDPLX ; 
 int BMCR_LOOPBACK ; 
 int BMCR_SPEED1000 ; 
 int /*<<< orphan*/  BNX2_EMAC_MODE ; 
 int BNX2_EMAC_MODE_25G_MODE ; 
 int BNX2_EMAC_MODE_FORCE_LINK ; 
 int BNX2_EMAC_MODE_HALF_DUPLEX ; 
 int BNX2_EMAC_MODE_MAC_LOOP ; 
 int BNX2_EMAC_MODE_PORT ; 
 int BNX2_EMAC_MODE_PORT_GMII ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct bnx2*) ; 
 int FUNC3 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct bnx2 *bp)
{
	u32 mac_mode;
	int rc, i;

	FUNC5(&bp->phy_lock);
	rc = FUNC3(bp, bp->mii_bmcr, BMCR_LOOPBACK | BMCR_FULLDPLX |
			    BMCR_SPEED1000);
	FUNC6(&bp->phy_lock);
	if (rc)
		return rc;

	for (i = 0; i < 10; i++) {
		if (FUNC2(bp) == 0)
			break;
		FUNC4(100);
	}

	mac_mode = FUNC0(bp, BNX2_EMAC_MODE);
	mac_mode &= ~(BNX2_EMAC_MODE_PORT | BNX2_EMAC_MODE_HALF_DUPLEX |
		      BNX2_EMAC_MODE_MAC_LOOP | BNX2_EMAC_MODE_FORCE_LINK |
		      BNX2_EMAC_MODE_25G_MODE);

	mac_mode |= BNX2_EMAC_MODE_PORT_GMII;
	FUNC1(bp, BNX2_EMAC_MODE, mac_mode);
	bp->link_up = 1;
	return 0;
}