#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct b43_phy {scalar_t__ type; int rev; scalar_t__ gmode; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct TYPE_4__ {scalar_t__ board_vendor; scalar_t__ board_type; TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;

/* Variables and functions */
 int B43_BFL_PACTRL ; 
 scalar_t__ B43_PHYTYPE_A ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int B43_PHY_CRS0 ; 
 int B43_PHY_CRS0_EN ; 
 int B43_PHY_ENCORE ; 
 int B43_PHY_ENCORE_EN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SSB_BOARDVENDOR_BCM ; 
 scalar_t__ SSB_BOARD_BU4306 ; 
 scalar_t__ SSB_BOARD_BU4309 ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int) ; 
 int FUNC4 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;

	/* This lowlevel A-PHY init is also called from G-PHY init.
	 * So we must not access phy->a, if called from G-PHY code.
	 */
	FUNC1((phy->type != B43_PHYTYPE_A) &&
		    (phy->type != B43_PHYTYPE_G));

	FUNC11();

	if (phy->rev >= 6) {
		if (phy->type == B43_PHYTYPE_A)
			FUNC2(dev, FUNC0(0x1B), ~0x1000);
		if (FUNC4(dev, B43_PHY_ENCORE) & B43_PHY_ENCORE_EN)
			FUNC6(dev, B43_PHY_ENCORE, 0x0010);
		else
			FUNC2(dev, B43_PHY_ENCORE, ~0x1010);
	}

	FUNC9(dev);

	if (phy->type == B43_PHYTYPE_A) {
		if (phy->gmode && (phy->rev < 3))
			FUNC6(dev, 0x0034, 0x0001);
		FUNC5(dev, 0);

		FUNC6(dev, B43_PHY_CRS0, B43_PHY_CRS0_EN);

		FUNC8(dev);

		if ((dev->dev->board_vendor == SSB_BOARDVENDOR_BCM) &&
		    ((dev->dev->board_type == SSB_BOARD_BU4306) ||
		     (dev->dev->board_type == SSB_BOARD_BU4309))) {
			; //TODO: A PHY LO
		}

		if (phy->rev >= 3)
			FUNC7(dev);

		FUNC10(dev);

		//TODO: radar detection
	}

	if ((phy->type == B43_PHYTYPE_G) &&
	    (dev->dev->bus_sprom->boardflags_lo & B43_BFL_PACTRL)) {
		FUNC3(dev, FUNC0(0x6E), 0xE000, 0x3CF);
	}
}