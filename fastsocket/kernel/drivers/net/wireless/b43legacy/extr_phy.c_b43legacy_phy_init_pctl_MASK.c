#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct b43legacy_phy {scalar_t__ type; int savedpctlreg; int rev; int radio_ver; int bbatt; int rfatt; int txctl1; int radio_rev; scalar_t__ manual_txpower_control; int /*<<< orphan*/  gmode; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ boardinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B43legacy_PHYTYPE_B ; 
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int /*<<< orphan*/  B43legacy_PHY_G_PCTL ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*) ; 
 int FUNC5 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*,int,int) ; 
 int FUNC8 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int,int) ; 
 scalar_t__ FUNC10 (struct b43legacy_wldev*) ; 

__attribute__((used)) static void FUNC11(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 saved_batt = 0;
	u16 saved_ratt = 0;
	u16 saved_txctl1 = 0;
	int must_reset_txpower = 0;

	FUNC0(!(phy->type == B43legacy_PHYTYPE_B ||
			  phy->type == B43legacy_PHYTYPE_G));
	if (FUNC10(dev) &&
	    (dev->dev->bus->boardinfo.type == 0x0416))
		return;

	FUNC3(dev, 0x0028, 0x8018);
	FUNC9(dev, 0x03E6, FUNC8(dev, 0x03E6) & 0xFFDF);

	if (phy->type == B43legacy_PHYTYPE_G) {
		if (!phy->gmode)
			return;
		FUNC3(dev, 0x047A, 0xC111);
	}
	if (phy->savedpctlreg != 0xFFFF)
		return;
#ifdef CONFIG_B43LEGACY_DEBUG
	if (phy->manual_txpower_control)
		return;
#endif

	if (phy->type == B43legacy_PHYTYPE_B &&
	    phy->rev >= 2 &&
	    phy->radio_ver == 0x2050)
		FUNC7(dev, 0x0076,
					FUNC5(dev, 0x0076)
					| 0x0084);
	else {
		saved_batt = phy->bbatt;
		saved_ratt = phy->rfatt;
		saved_txctl1 = phy->txctl1;
		if ((phy->radio_rev >= 6) && (phy->radio_rev <= 8)
		    && /*FIXME: incomplete specs for 5 < revision < 9 */ 0)
			FUNC6(dev, 0xB, 0x1F, 0);
		else
			FUNC6(dev, 0xB, 9, 0);
		must_reset_txpower = 1;
	}
	FUNC1(dev);

	phy->savedpctlreg = FUNC2(dev, B43legacy_PHY_G_PCTL);

	if (must_reset_txpower)
		FUNC6(dev, saved_batt, saved_ratt,
					       saved_txctl1);
	else
		FUNC7(dev, 0x0076, FUNC5(dev,
					0x0076) & 0xFF7B);
	FUNC4(dev);
}