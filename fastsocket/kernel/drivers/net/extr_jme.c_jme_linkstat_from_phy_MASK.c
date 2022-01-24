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
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BMSR_ANCOMP ; 
 int MII_BMSR ; 
 int PHY_LINK_AUTONEG_COMPLETE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32
FUNC1(struct jme_adapter *jme)
{
	u32 phylink, bmsr;

	phylink = FUNC0(jme->dev, jme->mii_if.phy_id, 17);
	bmsr = FUNC0(jme->dev, jme->mii_if.phy_id, MII_BMSR);
	if (bmsr & BMSR_ANCOMP)
		phylink |= PHY_LINK_AUTONEG_COMPLETE;

	return phylink;
}