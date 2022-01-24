#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct brcms_hardware {int up; int sbclk; int clk; int /*<<< orphan*/  sih; int /*<<< orphan*/  noreset; TYPE_2__* wlc; int /*<<< orphan*/  d11core; TYPE_1__* band; } ;
struct TYPE_6__ {int /*<<< orphan*/  wl; } ;
struct TYPE_5__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct brcms_hardware *wlc_hw)
{
	uint callbacks = 0;
	bool dev_gone;

	if (!wlc_hw->up)
		return callbacks;

	wlc_hw->up = false;
	FUNC11(wlc_hw->band->pi, false);

	dev_gone = FUNC8(wlc_hw->wlc);

	if (dev_gone) {
		wlc_hw->sbclk = false;
		wlc_hw->clk = false;
		FUNC10(wlc_hw->band->pi, false);

		/* reclaim any posted packets */
		FUNC6(wlc_hw->wlc);
	} else {

		/* Reset and disable the core */
		if (FUNC2(wlc_hw->d11core)) {
			if (FUNC3(wlc_hw->d11core,
					FUNC0(maccontrol)) & MCTL_EN_MAC)
				FUNC7(wlc_hw->wlc);
			callbacks += FUNC9(wlc_hw->wlc->wl);
			FUNC5(wlc_hw);
		}

		/* turn off primary xtal and pll */
		if (!wlc_hw->noreset) {
			FUNC1(wlc_hw->sih);
			FUNC4(wlc_hw, OFF);
		}
	}

	return callbacks;
}