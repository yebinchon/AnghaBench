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
struct b43legacy_phy {int rev; int radio_rev; int initval; int txctl2; int radio_ver; int txctl1; int* nrssi; scalar_t__ gmode; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int boardflags_lo; } ;
struct TYPE_5__ {int chip_id; int chip_package; TYPE_1__ sprom; } ;

/* Variables and functions */
 int B43legacy_BFL_PACTRL ; 
 int B43legacy_BFL_RSSI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*) ; 
 int FUNC11 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43legacy_wldev*,int,int) ; 
 int FUNC13 (struct b43legacy_wldev*) ; 
 int FUNC14 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43legacy_wldev*,int,int) ; 

__attribute__((used)) static void FUNC16(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 tmp;

	if (phy->rev == 1)
		FUNC7(dev);
	else
		FUNC8(dev);
	if (phy->rev >= 2 && phy->gmode)
		FUNC6(dev);

	if (phy->rev >= 2) {
		FUNC12(dev, 0x0814, 0x0000);
		FUNC12(dev, 0x0815, 0x0000);
	}
	if (phy->rev == 2) {
		FUNC12(dev, 0x0811, 0x0000);
		FUNC12(dev, 0x0015, 0x00C0);
	}
	if (phy->rev > 5) {
		FUNC12(dev, 0x0811, 0x0400);
		FUNC12(dev, 0x0015, 0x00C0);
	}
	if (phy->gmode) {
		tmp = FUNC11(dev, 0x0400) & 0xFF;
		if (tmp == 3) {
			FUNC12(dev, 0x04C2, 0x1816);
			FUNC12(dev, 0x04C3, 0x8606);
		}
		if (tmp == 4 || tmp == 5) {
			FUNC12(dev, 0x04C2, 0x1816);
			FUNC12(dev, 0x04C3, 0x8006);
			FUNC12(dev, 0x04CC,
					    (FUNC11(dev,
					     0x04CC) & 0x00FF) |
					     0x1F00);
		}
		if (phy->rev >= 2)
			FUNC12(dev, 0x047E, 0x0078);
	}
	if (phy->radio_rev == 8) {
		FUNC12(dev, 0x0801, FUNC11(dev, 0x0801)
				    | 0x0080);
		FUNC12(dev, 0x043E, FUNC11(dev, 0x043E)
				    | 0x0004);
	}
	if (phy->rev >= 2 && phy->gmode)
		FUNC1(dev);
	if (phy->radio_rev != 8) {
		if (phy->initval == 0xFFFF)
			phy->initval = FUNC13(dev);
		else
			FUNC15(dev, 0x0078, phy->initval);
	}
	if (phy->txctl2 == 0xFFFF)
		FUNC10(dev);
	else {
		if (phy->radio_ver == 0x2050 && phy->radio_rev == 8)
			FUNC15(dev, 0x0052,
						(phy->txctl1 << 4) |
						phy->txctl2);
		else
			FUNC15(dev, 0x0052,
						(FUNC14(dev,
						 0x0052) & 0xFFF0) |
						 phy->txctl1);
		if (phy->rev >= 6)
			FUNC12(dev, 0x0036,
					    (FUNC11(dev, 0x0036)
					     & 0x0FFF) | (phy->txctl2 << 12));
		if (dev->dev->bus->sprom.boardflags_lo &
		    B43legacy_BFL_PACTRL)
			FUNC12(dev, 0x002E, 0x8075);
		else
			FUNC12(dev, 0x002E, 0x807F);
		if (phy->rev < 2)
			FUNC12(dev, 0x002F, 0x0101);
		else
			FUNC12(dev, 0x002F, 0x0202);
	}
	if (phy->gmode) {
		FUNC9(dev, 0);
		FUNC12(dev, 0x080F, 0x8078);
	}

	if (!(dev->dev->bus->sprom.boardflags_lo & B43legacy_BFL_RSSI)) {
		/* The specs state to update the NRSSI LT with
		 * the value 0x7FFFFFFF here. I think that is some weird
		 * compiler optimization in the original driver.
		 * Essentially, what we do here is resetting all NRSSI LT
		 * entries to -32 (see the clamp_val() in nrssi_hw_update())
		 */
		FUNC4(dev, 0xFFFF);
		FUNC3(dev);
	} else if (phy->gmode || phy->rev >= 2) {
		if (phy->nrssi[0] == -1000) {
			FUNC0(phy->nrssi[1] != -1000);
			FUNC2(dev);
		} else {
			FUNC0(phy->nrssi[1] == -1000);
			FUNC3(dev);
		}
	}
	if (phy->radio_rev == 8)
		FUNC12(dev, 0x0805, 0x3230);
	FUNC5(dev);
	if (dev->dev->bus->chip_id == 0x4306
	    && dev->dev->bus->chip_package == 2) {
		FUNC12(dev, 0x0429,
				    FUNC11(dev, 0x0429) & 0xBFFF);
		FUNC12(dev, 0x04C3,
				    FUNC11(dev, 0x04C3) & 0x7FFF);
	}
}