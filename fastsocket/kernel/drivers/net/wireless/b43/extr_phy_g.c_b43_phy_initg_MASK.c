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
struct b43_phy {int rev; int radio_rev; scalar_t__ gmode; struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_3__* dev; struct b43_phy phy; } ;
struct b43_phy_g {int initval; int* nrssi; TYPE_1__* lo_control; } ;
struct TYPE_6__ {int chip_id; int chip_pkg; TYPE_2__* bus_sprom; } ;
struct TYPE_5__ {int boardflags_lo; } ;
struct TYPE_4__ {int tx_bias; int tx_magn; } ;

/* Variables and functions */
 int B43_BFL_PACTRL ; 
 int B43_BFL_RSSI ; 
 int B43_PHYVER_VERSION ; 
 int /*<<< orphan*/  B43_PHY_ANALOGOVER ; 
 int /*<<< orphan*/  B43_PHY_ANALOGOVERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B43_PHY_CRS0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  B43_PHY_LO_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  B43_PHY_PGACTL ; 
 int /*<<< orphan*/  B43_PHY_RFOVER ; 
 int /*<<< orphan*/  B43_PHY_VERSION_OFDM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC16 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC20 (struct b43_wldev*,int,int,int) ; 
 int FUNC21 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct b43_wldev*,int,int) ; 
 scalar_t__ FUNC23 (struct b43_phy*) ; 
 scalar_t__ FUNC24 (struct b43_phy*) ; 

__attribute__((used)) static void FUNC25(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u16 tmp;

	if (phy->rev == 1)
		FUNC12(dev);
	else
		FUNC13(dev);

	if (phy->rev >= 2 || phy->gmode)
		FUNC11(dev);

	if (phy->rev >= 2) {
		FUNC18(dev, B43_PHY_ANALOGOVER, 0);
		FUNC18(dev, B43_PHY_ANALOGOVERVAL, 0);
	}
	if (phy->rev == 2) {
		FUNC18(dev, B43_PHY_RFOVER, 0);
		FUNC18(dev, B43_PHY_PGACTL, 0xC0);
	}
	if (phy->rev > 5) {
		FUNC18(dev, B43_PHY_RFOVER, 0x400);
		FUNC18(dev, B43_PHY_PGACTL, 0xC0);
	}
	if (phy->gmode || phy->rev >= 2) {
		tmp = FUNC16(dev, B43_PHY_VERSION_OFDM);
		tmp &= B43_PHYVER_VERSION;
		if (tmp == 3 || tmp == 5) {
			FUNC18(dev, FUNC2(0xC2), 0x1816);
			FUNC18(dev, FUNC2(0xC3), 0x8006);
		}
		if (tmp == 5) {
			FUNC15(dev, FUNC2(0xCC), 0x00FF, 0x1F00);
		}
	}
	if ((phy->rev <= 2 && phy->gmode) || phy->rev >= 2)
		FUNC18(dev, FUNC2(0x7E), 0x78);
	if (phy->radio_rev == 8) {
		FUNC17(dev, FUNC1(0x01), 0x80);
		FUNC17(dev, FUNC2(0x3E), 0x4);
	}
	if (FUNC23(phy))
		FUNC4(dev);

	if (phy->radio_rev != 8) {
		if (gphy->initval == 0xFFFF)
			gphy->initval = FUNC19(dev);
		else
			FUNC22(dev, 0x0078, gphy->initval);
	}
	FUNC8(dev);
	if (FUNC24(phy)) {
		FUNC22(dev, 0x52,
				  (FUNC21(dev, 0x52) & 0xFF00)
				  | gphy->lo_control->tx_bias | gphy->
				  lo_control->tx_magn);
	} else {
		FUNC20(dev, 0x52, 0xFFF0, gphy->lo_control->tx_bias);
	}
	if (phy->rev >= 6) {
		FUNC15(dev, FUNC0(0x36), 0x0FFF, (gphy->lo_control->tx_bias << 12));
	}
	if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_PACTRL)
		FUNC18(dev, FUNC0(0x2E), 0x8075);
	else
		FUNC18(dev, FUNC0(0x2E), 0x807F);
	if (phy->rev < 2)
		FUNC18(dev, FUNC0(0x2F), 0x101);
	else
		FUNC18(dev, FUNC0(0x2F), 0x202);
	if (phy->gmode || phy->rev >= 2) {
		FUNC7(dev);
		FUNC18(dev, B43_PHY_LO_MASK, 0x8078);
	}

	if (!(dev->dev->bus_sprom->boardflags_lo & B43_BFL_RSSI)) {
		/* The specs state to update the NRSSI LT with
		 * the value 0x7FFFFFFF here. I think that is some weird
		 * compiler optimization in the original driver.
		 * Essentially, what we do here is resetting all NRSSI LT
		 * entries to -32 (see the clamp_val() in nrssi_hw_update())
		 */
		FUNC9(dev, 0xFFFF);	//FIXME?
		FUNC6(dev);
	} else if (phy->gmode || phy->rev >= 2) {
		if (gphy->nrssi[0] == -1000) {
			FUNC3(gphy->nrssi[1] != -1000);
			FUNC5(dev);
		} else
			FUNC6(dev);
	}
	if (phy->radio_rev == 8)
		FUNC18(dev, FUNC1(0x05), 0x3230);
	FUNC10(dev);
	/* FIXME: The spec says in the following if, the 0 should be replaced
	   'if OFDM may not be used in the current locale'
	   but OFDM is legal everywhere */
	if ((dev->dev->chip_id == 0x4306
	     && dev->dev->chip_pkg == 2) || 0) {
		FUNC14(dev, B43_PHY_CRS0, 0xBFFF);
		FUNC14(dev, FUNC2(0xC3), 0x7FFF);
	}
}