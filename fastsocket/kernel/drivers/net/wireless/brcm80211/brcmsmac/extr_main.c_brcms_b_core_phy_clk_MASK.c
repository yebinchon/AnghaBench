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
struct brcms_hardware {int phyclk; int /*<<< orphan*/  unit; int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int OFF ; 
 int SICF_FGC ; 
 int SICF_GMODE ; 
 int SICF_PRST ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct brcms_hardware *wlc_hw, bool clk)
{
	FUNC1(wlc_hw->d11core, "wl%d: clk %d\n", wlc_hw->unit, clk);

	wlc_hw->phyclk = clk;

	if (OFF == clk) {	/* clear gmode bit, put phy into reset */

		FUNC0(wlc_hw, (SICF_PRST | SICF_FGC | SICF_GMODE),
				   (SICF_PRST | SICF_FGC));
		FUNC2(1);
		FUNC0(wlc_hw, (SICF_PRST | SICF_FGC), SICF_PRST);
		FUNC2(1);

	} else {		/* take phy out of reset */

		FUNC0(wlc_hw, (SICF_PRST | SICF_FGC), SICF_FGC);
		FUNC2(1);
		FUNC0(wlc_hw, SICF_FGC, 0);
		FUNC2(1);

	}
}