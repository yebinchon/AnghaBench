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
typedef  int u8 ;
typedef  int u16 ;
struct b43legacy_phy {int radio_rev; scalar_t__ type; int channel; int analog; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int boardflags_lo; } ;
struct TYPE_5__ {TYPE_1__ sprom; } ;

/* Variables and functions */
 int B43legacy_BFL_RSSI ; 
 scalar_t__ B43legacy_PHYTYPE_B ; 
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  B43legacy_UCODEFLAGS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int FUNC4 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*) ; 
 int FUNC7 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*,int,int) ; 
 int FUNC11 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 offset;
	u16 val;
	u8 old_channel;

	FUNC5(dev, 0x003E, 0x817A);
	FUNC10(dev, 0x007A,
				(FUNC7(dev, 0x007A) | 0x0058));
	if (phy->radio_rev == 4 ||
	     phy->radio_rev == 5) {
		FUNC10(dev, 0x0051, 0x0037);
		FUNC10(dev, 0x0052, 0x0070);
		FUNC10(dev, 0x0053, 0x00B3);
		FUNC10(dev, 0x0054, 0x009B);
		FUNC10(dev, 0x005A, 0x0088);
		FUNC10(dev, 0x005B, 0x0088);
		FUNC10(dev, 0x005D, 0x0088);
		FUNC10(dev, 0x005E, 0x0088);
		FUNC10(dev, 0x007D, 0x0088);
		FUNC12(dev, B43legacy_SHM_SHARED,
				      B43legacy_UCODEFLAGS_OFFSET,
				      (FUNC11(dev,
				      B43legacy_SHM_SHARED,
				      B43legacy_UCODEFLAGS_OFFSET)
				      | 0x00000200));
	}
	if (phy->radio_rev == 8) {
		FUNC10(dev, 0x0051, 0x0000);
		FUNC10(dev, 0x0052, 0x0040);
		FUNC10(dev, 0x0053, 0x00B7);
		FUNC10(dev, 0x0054, 0x0098);
		FUNC10(dev, 0x005A, 0x0088);
		FUNC10(dev, 0x005B, 0x006B);
		FUNC10(dev, 0x005C, 0x000F);
		if (dev->dev->bus->sprom.boardflags_lo & 0x8000) {
			FUNC10(dev, 0x005D, 0x00FA);
			FUNC10(dev, 0x005E, 0x00D8);
		} else {
			FUNC10(dev, 0x005D, 0x00F5);
			FUNC10(dev, 0x005E, 0x00B8);
		}
		FUNC10(dev, 0x0073, 0x0003);
		FUNC10(dev, 0x007D, 0x00A8);
		FUNC10(dev, 0x007C, 0x0001);
		FUNC10(dev, 0x007E, 0x0008);
	}
	val = 0x1E1F;
	for (offset = 0x0088; offset < 0x0098; offset++) {
		FUNC5(dev, offset, val);
		val -= 0x0202;
	}
	val = 0x3E3F;
	for (offset = 0x0098; offset < 0x00A8; offset++) {
		FUNC5(dev, offset, val);
		val -= 0x0202;
	}
	val = 0x2120;
	for (offset = 0x00A8; offset < 0x00C8; offset++) {
		FUNC5(dev, offset, (val & 0x3F3F));
		val += 0x0202;
	}
	if (phy->type == B43legacy_PHYTYPE_G) {
		FUNC10(dev, 0x007A,
					FUNC7(dev, 0x007A) |
					0x0020);
		FUNC10(dev, 0x0051,
					FUNC7(dev, 0x0051) |
					0x0004);
		FUNC5(dev, 0x0802,
				    FUNC4(dev, 0x0802) | 0x0100);
		FUNC5(dev, 0x042B,
				    FUNC4(dev, 0x042B) | 0x2000);
		FUNC5(dev, 0x5B, 0x0000);
		FUNC5(dev, 0x5C, 0x0000);
	}

	old_channel = phy->channel;
	if (old_channel >= 8)
		FUNC8(dev, 1, 0);
	else
		FUNC8(dev, 13, 0);

	FUNC10(dev, 0x0050, 0x0020);
	FUNC10(dev, 0x0050, 0x0023);
	FUNC14(40);
	if (phy->radio_rev < 6 || phy->radio_rev == 8) {
		FUNC10(dev, 0x007C,
					(FUNC7(dev, 0x007C)
					| 0x0002));
		FUNC10(dev, 0x0050, 0x0020);
	}
	if (phy->radio_rev <= 2) {
		FUNC10(dev, 0x0050, 0x0020);
		FUNC10(dev, 0x005A, 0x0070);
		FUNC10(dev, 0x005B, 0x007B);
		FUNC10(dev, 0x005C, 0x00B0);
	}
	FUNC10(dev, 0x007A,
				(FUNC7(dev,
				0x007A) & 0x00F8) | 0x0007);

	FUNC8(dev, old_channel, 0);

	FUNC5(dev, 0x0014, 0x0200);
	if (phy->radio_rev >= 6)
		FUNC5(dev, 0x002A, 0x88C2);
	else
		FUNC5(dev, 0x002A, 0x8AC0);
	FUNC5(dev, 0x0038, 0x0668);
	FUNC9(dev, 0xFFFF, 0xFFFF, 0xFFFF);
	if (phy->radio_rev == 4 || phy->radio_rev == 5)
		FUNC5(dev, 0x005D, (FUNC4(dev,
				    0x005D) & 0xFF80) | 0x0003);
	if (phy->radio_rev <= 2)
		FUNC10(dev, 0x005D, 0x000D);

	if (phy->analog == 4) {
		FUNC13(dev, 0x03E4, 0x0009);
		FUNC5(dev, 0x61, FUNC4(dev, 0x61)
				    & 0xFFF);
	} else
		FUNC5(dev, 0x0002, (FUNC4(dev,
				    0x0002) & 0xFFC0) | 0x0004);
	if (phy->type == B43legacy_PHYTYPE_G)
		FUNC13(dev, 0x03E6, 0x0);
	if (phy->type == B43legacy_PHYTYPE_B) {
		FUNC13(dev, 0x03E6, 0x8140);
		FUNC5(dev, 0x0016, 0x0410);
		FUNC5(dev, 0x0017, 0x0820);
		FUNC5(dev, 0x0062, 0x0007);
		FUNC6(dev);
		FUNC3(dev);
		if (dev->dev->bus->sprom.boardflags_lo &
		    B43legacy_BFL_RSSI) {
			FUNC0(dev);
			FUNC1(dev);
		}
		FUNC2(dev);
	}
}