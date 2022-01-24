#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct brcms_hardware {int clk; TYPE_1__* band; int /*<<< orphan*/  d11core; scalar_t__ noreset; int /*<<< orphan*/  wlc; int /*<<< orphan*/  unit; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_hardware*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct brcms_hardware *wlc_hw)
{
	bool dev_gone;

	FUNC2(wlc_hw->d11core, "wl%d: disable core\n", wlc_hw->unit);

	dev_gone = FUNC3(wlc_hw->wlc);

	if (dev_gone)
		return;

	if (wlc_hw->noreset)
		return;

	/* radio off */
	FUNC6(wlc_hw->band->pi, OFF);

	/* turn off analog core */
	FUNC4(wlc_hw->band->pi, OFF);

	/* turn off PHYPLL to save power */
	FUNC1(wlc_hw, false);

	wlc_hw->clk = false;
	FUNC0(wlc_hw->d11core, 0);
	FUNC5(wlc_hw->band->pi, false);
}