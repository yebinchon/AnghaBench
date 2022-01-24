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
struct brcms_hardware {int ucode_loaded; int boardflags; int boardrev; int /*<<< orphan*/  sih; TYPE_2__* wlc; TYPE_1__* band; int /*<<< orphan*/  unit; int /*<<< orphan*/  d11core; } ;
struct TYPE_6__ {int hw_up; } ;
struct TYPE_5__ {TYPE_3__* pub; } ;
struct TYPE_4__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 scalar_t__ BCM4313_CHIP_ID ; 
 int /*<<< orphan*/  BCMA_CLKMODE_FAST ; 
 int BFL_FEM ; 
 int BFL_FEM_BT ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct brcms_hardware *wlc_hw)
{
	if (wlc_hw->wlc->pub->hw_up)
		return;

	FUNC5(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);

	/*
	 * Enable pll and xtal, initialize the power control registers,
	 * and force fastclock for the remainder of brcms_c_up().
	 */
	FUNC4(wlc_hw, ON);
	FUNC0(wlc_hw->sih);
	FUNC3(wlc_hw, BCMA_CLKMODE_FAST);

	/*
	 * TODO: test suspend/resume
	 *
	 * AI chip doesn't restore bar0win2 on
	 * hibernation/resume, need sw fixup
	 */

	/*
	 * Inform phy that a POR reset has occurred so
	 * it does a complete phy init
	 */
	FUNC6(wlc_hw->band->pi);

	wlc_hw->ucode_loaded = false;
	wlc_hw->wlc->pub->hw_up = true;

	if ((wlc_hw->boardflags & BFL_FEM)
	    && (FUNC2(wlc_hw->sih) == BCM4313_CHIP_ID)) {
		if (!
		    (wlc_hw->boardrev >= 0x1250
		     && (wlc_hw->boardflags & BFL_FEM_BT)))
			FUNC1(wlc_hw->sih);
	}
}