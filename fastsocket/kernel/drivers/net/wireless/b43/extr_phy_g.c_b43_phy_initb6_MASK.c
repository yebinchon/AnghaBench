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
typedef  int u8 ;
typedef  int u16 ;
struct b43_phy {int radio_rev; scalar_t__ type; int channel; int analog; struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct b43_phy_g {int /*<<< orphan*/  tx_control; int /*<<< orphan*/  rfatt; int /*<<< orphan*/  bbatt; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;

/* Variables and functions */
 int B43_BFL_ALTIQ ; 
 int B43_HF_TSSIRPSMW ; 
 scalar_t__ B43_PHYTYPE_B ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int,int) ; 
 int FUNC9 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u16 offset, val;
	u8 old_channel;

	FUNC7(dev, 0x003E, 0x817A);
	FUNC11(dev, 0x007A,
			  (FUNC9(dev, 0x007A) | 0x0058));
	if (phy->radio_rev == 4 || phy->radio_rev == 5) {
		FUNC11(dev, 0x51, 0x37);
		FUNC11(dev, 0x52, 0x70);
		FUNC11(dev, 0x53, 0xB3);
		FUNC11(dev, 0x54, 0x9B);
		FUNC11(dev, 0x5A, 0x88);
		FUNC11(dev, 0x5B, 0x88);
		FUNC11(dev, 0x5D, 0x88);
		FUNC11(dev, 0x5E, 0x88);
		FUNC11(dev, 0x7D, 0x88);
		FUNC3(dev, FUNC2(dev)
			     | B43_HF_TSSIRPSMW);
	}
	FUNC0(phy->radio_rev == 6 || phy->radio_rev == 7);	/* We had code for these revs here... */
	if (phy->radio_rev == 8) {
		FUNC11(dev, 0x51, 0);
		FUNC11(dev, 0x52, 0x40);
		FUNC11(dev, 0x53, 0xB7);
		FUNC11(dev, 0x54, 0x98);
		FUNC11(dev, 0x5A, 0x88);
		FUNC11(dev, 0x5B, 0x6B);
		FUNC11(dev, 0x5C, 0x0F);
		if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_ALTIQ) {
			FUNC11(dev, 0x5D, 0xFA);
			FUNC11(dev, 0x5E, 0xD8);
		} else {
			FUNC11(dev, 0x5D, 0xF5);
			FUNC11(dev, 0x5E, 0xB8);
		}
		FUNC11(dev, 0x0073, 0x0003);
		FUNC11(dev, 0x007D, 0x00A8);
		FUNC11(dev, 0x007C, 0x0001);
		FUNC11(dev, 0x007E, 0x0008);
	}
	val = 0x1E1F;
	for (offset = 0x0088; offset < 0x0098; offset++) {
		FUNC7(dev, offset, val);
		val -= 0x0202;
	}
	val = 0x3E3F;
	for (offset = 0x0098; offset < 0x00A8; offset++) {
		FUNC7(dev, offset, val);
		val -= 0x0202;
	}
	val = 0x2120;
	for (offset = 0x00A8; offset < 0x00C8; offset++) {
		FUNC7(dev, offset, (val & 0x3F3F));
		val += 0x0202;
	}
	if (phy->type == B43_PHYTYPE_G) {
		FUNC10(dev, 0x007A, 0x0020);
		FUNC10(dev, 0x0051, 0x0004);
		FUNC6(dev, 0x0802, 0x0100);
		FUNC6(dev, 0x042B, 0x2000);
		FUNC7(dev, 0x5B, 0);
		FUNC7(dev, 0x5C, 0);
	}

	old_channel = phy->channel;
	if (old_channel >= 8)
		FUNC1(dev, 1, 0);
	else
		FUNC1(dev, 13, 0);

	FUNC11(dev, 0x0050, 0x0020);
	FUNC11(dev, 0x0050, 0x0023);
	FUNC14(40);
	if (phy->radio_rev < 6 || phy->radio_rev == 8) {
		FUNC11(dev, 0x7C, (FUNC9(dev, 0x7C)
					      | 0x0002));
		FUNC11(dev, 0x50, 0x20);
	}
	if (phy->radio_rev <= 2) {
		FUNC11(dev, 0x7C, 0x20);
		FUNC11(dev, 0x5A, 0x70);
		FUNC11(dev, 0x5B, 0x7B);
		FUNC11(dev, 0x5C, 0xB0);
	}
	FUNC8(dev, 0x007A, 0x00F8, 0x0007);

	FUNC1(dev, old_channel, 0);

	FUNC7(dev, 0x0014, 0x0200);
	if (phy->radio_rev >= 6)
		FUNC7(dev, 0x2A, 0x88C2);
	else
		FUNC7(dev, 0x2A, 0x8AC0);
	FUNC7(dev, 0x0038, 0x0668);
	FUNC12(dev, &gphy->bbatt, &gphy->rfatt, gphy->tx_control);
	if (phy->radio_rev <= 5) {
		FUNC5(dev, 0x5D, 0xFF80, 0x0003);
	}
	if (phy->radio_rev <= 2)
		FUNC11(dev, 0x005D, 0x000D);

	if (phy->analog == 4) {
		FUNC13(dev, 0x3E4, 9);
		FUNC4(dev, 0x61, 0x0FFF);
	} else {
		FUNC5(dev, 0x0002, 0xFFC0, 0x0004);
	}
	if (phy->type == B43_PHYTYPE_B)
		FUNC0(1);
	else if (phy->type == B43_PHYTYPE_G)
		FUNC13(dev, 0x03E6, 0x0);
}