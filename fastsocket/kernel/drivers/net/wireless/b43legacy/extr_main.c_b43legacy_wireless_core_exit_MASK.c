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
typedef  int /*<<< orphan*/  u32 ;
struct b43legacy_phy {int /*<<< orphan*/ * lo_control; int /*<<< orphan*/ * tssi2dbm; scalar_t__ dyn_tssi_tbl; } ;
struct b43legacy_wldev {TYPE_1__* dev; TYPE_2__* wl; struct b43legacy_phy phy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * current_beacon; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MACCTL_PSM_JMP0 ; 
 int /*<<< orphan*/  B43legacy_MACCTL_PSM_RUN ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 int /*<<< orphan*/  B43legacy_STAT_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u32 macctl;

	FUNC0(FUNC9(dev) > B43legacy_STAT_INITIALIZED);
	if (FUNC9(dev) != B43legacy_STAT_INITIALIZED)
		return;
	FUNC8(dev, B43legacy_STAT_UNINIT);

	/* Stop the microcode PSM. */
	macctl = FUNC6(dev, B43legacy_MMIO_MACCTL);
	macctl &= ~B43legacy_MACCTL_PSM_RUN;
	macctl |= B43legacy_MACCTL_PSM_JMP0;
	FUNC11(dev, B43legacy_MMIO_MACCTL, macctl);

	FUNC3(dev);
	FUNC7(dev->wl);
	FUNC4(dev);
	FUNC2(dev);
	FUNC1(dev);
	FUNC5(dev, 1);
	FUNC10(dev, 0);
	if (phy->dyn_tssi_tbl)
		FUNC13(phy->tssi2dbm);
	FUNC13(phy->lo_control);
	phy->lo_control = NULL;
	if (dev->wl->current_beacon) {
		FUNC12(dev->wl->current_beacon);
		dev->wl->current_beacon = NULL;
	}

	FUNC15(dev->dev, 0);
	FUNC14(dev->dev->bus);
}