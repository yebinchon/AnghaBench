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
struct b43legacy_phy {int* interfstack; int rev; int aci_enable; } ;
struct b43legacy_wldev {int /*<<< orphan*/  bad_frames_preempt; struct b43legacy_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B43legacy_PHY_G_CRS ; 
 int B43legacy_PHY_RADIO_BITFIELD ; 
#define  B43legacy_RADIO_INTERFMODE_MANUALWLAN 129 
#define  B43legacy_RADIO_INTERFMODE_NONWLAN 128 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  B43legacy_UCODEFLAGS_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int FUNC3 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int,int) ; 
 int FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct b43legacy_wldev *dev,
						int mode)
{
	struct b43legacy_phy *phy = &dev->phy;
	u32 tmp32;
	u32 *stack = phy->interfstack;

	switch (mode) {
	case B43legacy_RADIO_INTERFMODE_NONWLAN:
		if (phy->rev != 1) {
			FUNC4(dev, 0x042B,
					    FUNC3(dev, 0x042B)
					    & ~0x0800);
			FUNC4(dev, B43legacy_PHY_G_CRS,
					    FUNC3(dev,
					    B43legacy_PHY_G_CRS) | 0x4000);
			break;
		}
		FUNC8(0x0078);
		FUNC2(dev);
		FUNC8(0x0406);
		FUNC4(dev, 0x042B,
				    FUNC3(dev, 0x042B) & ~0x0800);
		if (!dev->bad_frames_preempt)
			FUNC4(dev, B43legacy_PHY_RADIO_BITFIELD,
					    FUNC3(dev,
					    B43legacy_PHY_RADIO_BITFIELD)
					    & ~(1 << 11));
		FUNC4(dev, B43legacy_PHY_G_CRS,
				    FUNC3(dev, B43legacy_PHY_G_CRS)
				    | 0x4000);
		FUNC8(0x04A0);
		FUNC8(0x04A1);
		FUNC8(0x04A2);
		FUNC8(0x04A8);
		FUNC8(0x04AB);
		FUNC8(0x04A7);
		FUNC8(0x04A3);
		FUNC8(0x04A9);
		FUNC8(0x0493);
		FUNC8(0x04AA);
		FUNC8(0x04AC);
		break;
	case B43legacy_RADIO_INTERFMODE_MANUALWLAN:
		if (!(FUNC3(dev, 0x0033) & 0x0800))
			break;

		phy->aci_enable = false;

		FUNC8(B43legacy_PHY_RADIO_BITFIELD);
		FUNC8(B43legacy_PHY_G_CRS);
		FUNC8(0x0033);
		FUNC8(0x04A3);
		FUNC8(0x04A9);
		FUNC8(0x0493);
		FUNC8(0x04AA);
		FUNC8(0x04AC);
		FUNC8(0x04A0);
		FUNC8(0x04A7);
		if (phy->rev >= 2) {
			FUNC8(0x04C0);
			FUNC8(0x04C1);
		} else
			FUNC8(0x0406);
		FUNC8(0x04A1);
		FUNC8(0x04AB);
		FUNC8(0x04A8);
		if (phy->rev == 2) {
			FUNC8(0x04AD);
			FUNC8(0x04AE);
		} else if (phy->rev >= 3) {
			FUNC8(0x04AD);
			FUNC8(0x0415);
			FUNC8(0x0416);
			FUNC8(0x0417);
			FUNC7(0x1A00 + 0x2);
			FUNC7(0x1A00 + 0x3);
		}
		FUNC8(0x04A2);
		FUNC8(0x04A8);
		FUNC8(0x042B);
		FUNC8(0x048C);
		tmp32 = FUNC5(dev, B43legacy_SHM_SHARED,
					     B43legacy_UCODEFLAGS_OFFSET);
		if (tmp32 & 0x800) {
			tmp32 &= ~0x800;
			FUNC6(dev, B43legacy_SHM_SHARED,
					      B43legacy_UCODEFLAGS_OFFSET,
					      tmp32);
		}
		FUNC1(dev);
		break;
	default:
		FUNC0(1);
	}
}