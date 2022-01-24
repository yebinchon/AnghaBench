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
typedef  int /*<<< orphan*/  u32 ;
struct b43_phy {int rev; struct b43_phy_g* g; } ;
struct b43_wldev {int /*<<< orphan*/  bad_frames_preempt; struct b43_phy phy; } ;
struct b43_phy_g {int aci_enable; int /*<<< orphan*/ * interfstack; } ;

/* Variables and functions */
 int B43_HF_ACIW ; 
#define  B43_INTERFMODE_MANUALWLAN 129 
#define  B43_INTERFMODE_NONWLAN 128 
 int B43_PHY_G_CRS ; 
 int B43_PHY_RADIO_BITFIELD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int FUNC6 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(struct b43_wldev *dev, int mode)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u32 *stack = gphy->interfstack;

	switch (mode) {
	case B43_INTERFMODE_NONWLAN:
		if (phy->rev != 1) {
			FUNC5(dev, 0x042B, ~0x0800);
			FUNC7(dev, B43_PHY_G_CRS, 0x4000);
			break;
		}
		FUNC10(0x0078);
		FUNC2(dev);
		FUNC9(0x0406);
		FUNC5(dev, 0x042B, ~0x0800);
		if (!dev->bad_frames_preempt) {
			FUNC5(dev, B43_PHY_RADIO_BITFIELD, ~(1 << 11));
		}
		FUNC7(dev, B43_PHY_G_CRS, 0x4000);
		FUNC9(0x04A0);
		FUNC9(0x04A1);
		FUNC9(0x04A2);
		FUNC9(0x04A8);
		FUNC9(0x04AB);
		FUNC9(0x04A7);
		FUNC9(0x04A3);
		FUNC9(0x04A9);
		FUNC9(0x0493);
		FUNC9(0x04AA);
		FUNC9(0x04AC);
		break;
	case B43_INTERFMODE_MANUALWLAN:
		if (!(FUNC6(dev, 0x0033) & 0x0800))
			break;

		gphy->aci_enable = false;

		FUNC9(B43_PHY_RADIO_BITFIELD);
		FUNC9(B43_PHY_G_CRS);
		FUNC9(0x0033);
		FUNC9(0x04A3);
		FUNC9(0x04A9);
		FUNC9(0x0493);
		FUNC9(0x04AA);
		FUNC9(0x04AC);
		FUNC9(0x04A0);
		FUNC9(0x04A7);
		if (phy->rev >= 2) {
			FUNC9(0x04C0);
			FUNC9(0x04C1);
		} else
			FUNC9(0x0406);
		FUNC9(0x04A1);
		FUNC9(0x04AB);
		FUNC9(0x04A8);
		if (phy->rev == 2) {
			FUNC9(0x04AD);
			FUNC9(0x04AE);
		} else if (phy->rev >= 3) {
			FUNC9(0x04AD);
			FUNC9(0x0415);
			FUNC9(0x0416);
			FUNC9(0x0417);
			FUNC8(0x1A00, 0x2);
			FUNC8(0x1A00, 0x3);
		}
		FUNC9(0x04A2);
		FUNC9(0x048A);
		FUNC9(0x042B);
		FUNC9(0x048C);
		FUNC4(dev, FUNC3(dev) & ~B43_HF_ACIW);
		FUNC1(dev);
		break;
	default:
		FUNC0(1);
	}
}