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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct link_params {int /*<<< orphan*/  port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 scalar_t__ MDIO_ACCESS_TIMEOUT ; 
 int /*<<< orphan*/  MDIO_COMBO_IEEE0_MII_CONTROL ; 
 scalar_t__ MDIO_COMBO_IEEO_MII_CONTROL_RESET ; 
 int /*<<< orphan*/  MDIO_REG_BANK_COMBO_IEEE0 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct link_params *params,
			       struct bnx2x_phy *phy,
			       u8 set_serdes)
{
	struct bnx2x *bp = params->bp;
	u16 mii_control;
	u16 i;
	FUNC0(bp, phy,
			  MDIO_REG_BANK_COMBO_IEEE0,
			  MDIO_COMBO_IEEE0_MII_CONTROL, &mii_control);

	/* Reset the unicore */
	FUNC1(bp, phy,
			  MDIO_REG_BANK_COMBO_IEEE0,
			  MDIO_COMBO_IEEE0_MII_CONTROL,
			  (mii_control |
			   MDIO_COMBO_IEEO_MII_CONTROL_RESET));
	if (set_serdes)
		FUNC3(bp, params->port);

	/* Wait for the reset to self clear */
	for (i = 0; i < MDIO_ACCESS_TIMEOUT; i++) {
		FUNC5(5);

		/* The reset erased the previous bank value */
		FUNC0(bp, phy,
				  MDIO_REG_BANK_COMBO_IEEE0,
				  MDIO_COMBO_IEEE0_MII_CONTROL,
				  &mii_control);

		if (!(mii_control & MDIO_COMBO_IEEO_MII_CONTROL_RESET)) {
			FUNC5(5);
			return 0;
		}
	}

	FUNC4(bp->dev,  "Warning: PHY was not initialized,"
			      " Port %d\n",
			 params->port);
	FUNC2(NETIF_MSG_LINK, "BUG! XGXS is still in reset!\n");
	return -EINVAL;

}