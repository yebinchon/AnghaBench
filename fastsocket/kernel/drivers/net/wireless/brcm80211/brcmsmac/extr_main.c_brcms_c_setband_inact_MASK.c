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
typedef  int /*<<< orphan*/  uint ;
typedef  int u32 ;
struct brcms_hardware {TYPE_1__* band; int /*<<< orphan*/  d11core; int /*<<< orphan*/  unit; } ;
struct brcms_c_info {int /*<<< orphan*/  wl; struct brcms_hardware* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC8(struct brcms_c_info *wlc, uint bandunit)
{
	struct brcms_hardware *wlc_hw = wlc->hw;
	u32 macintmask;
	u32 macctrl;

	FUNC5(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);
	macctrl = FUNC2(wlc_hw->d11core,
			      FUNC0(maccontrol));
	FUNC1((macctrl & MCTL_EN_MAC) != 0);

	/* disable interrupts */
	macintmask = FUNC6(wlc->wl);

	/* radio off */
	FUNC7(wlc_hw->band->pi, OFF);

	FUNC3(wlc_hw, OFF);

	FUNC4(wlc_hw, bandunit);

	return macintmask;
}