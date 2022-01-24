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
struct b43_phy {scalar_t__ type; int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 scalar_t__ B43_PHYTYPE_A ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC18 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC19 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC20 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC21 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC22 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC23 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC24 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC25 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC26 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC27 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC28 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC29 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC30 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC31 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC32 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC33 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC34 (struct b43_wldev*) ; 

void FUNC35(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;

	if (phy->type == B43_PHYTYPE_A) {
		switch (phy->rev) {
		case 2:
			FUNC26(dev);
			FUNC6(dev);
			FUNC2(dev);
			FUNC31(dev);
			FUNC19(dev);
			FUNC16(dev);
			FUNC18(dev);
			FUNC28(dev);
			FUNC4(dev);
			FUNC15(dev);
			FUNC17(dev);
			FUNC24(dev);
			FUNC29(dev);
			FUNC25(dev);
			FUNC5(dev);
			FUNC32(dev);
			FUNC13(dev);
			FUNC1(dev);
			FUNC21(dev);
			break;
		case 3:
			FUNC26(dev);
			FUNC22(dev);
			FUNC28(dev);
			FUNC31(dev);
			FUNC19(dev);
			FUNC15(dev);
			FUNC24(dev);
			FUNC25(dev);
			FUNC23(dev);
			FUNC4(dev);
			FUNC18(dev);
			FUNC33(dev);
			FUNC32(dev);
			break;
		case 5:
			FUNC20(dev);
		case 6:
			FUNC26(dev);
			FUNC28(dev);
			FUNC31(dev);
			FUNC19(dev);
			FUNC15(dev);
			FUNC24(dev);
			FUNC25(dev);
			FUNC23(dev);
			FUNC4(dev);
			FUNC18(dev);
			FUNC33(dev);
			FUNC32(dev);
			break;
		case 7:
			FUNC20(dev);
			FUNC26(dev);
			FUNC28(dev);
			FUNC31(dev);
			FUNC19(dev);
			FUNC15(dev);
			FUNC24(dev);
			FUNC25(dev);
			FUNC23(dev);
			FUNC4(dev);
			FUNC18(dev);
			FUNC33(dev);
			FUNC32(dev);
			FUNC27(dev);
		default:
			FUNC0(1);
		}
		FUNC7(dev);
	} else if (phy->type == B43_PHYTYPE_G) {
		switch (phy->rev) {
		case 1://XXX review rev1
			FUNC12(dev);
			FUNC14(dev);
			FUNC11(dev);
			FUNC9(dev);
			FUNC17(dev);
			FUNC24(dev);
			FUNC29(dev);
			FUNC25(dev);
			FUNC5(dev);
			FUNC34(dev);
			FUNC3(dev);
			break;
		case 2:
		case 6:
		case 7:
		case 8:
		case 9:
			FUNC30(dev);
			FUNC12(dev);
			FUNC28(dev);
			FUNC24(dev);
			FUNC25(dev);
			FUNC23(dev);
			FUNC34(dev);
			FUNC3(dev);
			FUNC4(dev);
			FUNC33(dev);
			break;
		default:
			FUNC0(1);
		}
		FUNC8(dev);
	} else { /* No N PHY support so far, LP PHY is in phy_lp.c */
		FUNC0(1);
	}

	FUNC10(dev);
}