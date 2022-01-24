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
typedef  int u32 ;
struct brcms_hardware {scalar_t__ mac_suspend_depth; int /*<<< orphan*/  unit; struct bcma_device* d11core; } ;
struct brcms_c_info {TYPE_1__* band; struct brcms_hardware* hw; } ;
struct bcma_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bandunit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMS_WAKE_OVERRIDE_MACSUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 int MCTL_PSM_JMP_0 ; 
 int MCTL_PSM_RUN ; 
 int MI_MACSSPNDD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_hardware*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bcma_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  macintstatus ; 

void FUNC7(struct brcms_c_info *wlc)
{
	struct brcms_hardware *wlc_hw = wlc->hw;
	struct bcma_device *core = wlc_hw->d11core;
	u32 mc, mi;

	FUNC6(core, "wl%d: bandunit %d\n", wlc_hw->unit,
			   wlc->band->bandunit);

	/*
	 * Track overlapping suspend requests
	 */
	wlc_hw->mac_suspend_depth--;
	if (wlc_hw->mac_suspend_depth > 0)
		return;

	mc = FUNC2(core, FUNC0(maccontrol));
	FUNC1(mc & MCTL_PSM_JMP_0);
	FUNC1(mc & MCTL_EN_MAC);
	FUNC1(!(mc & MCTL_PSM_RUN));

	FUNC4(wlc_hw, MCTL_EN_MAC, MCTL_EN_MAC);
	FUNC3(core, FUNC0(macintstatus), MI_MACSSPNDD);

	mc = FUNC2(core, FUNC0(maccontrol));
	FUNC1(mc & MCTL_PSM_JMP_0);
	FUNC1(!(mc & MCTL_EN_MAC));
	FUNC1(!(mc & MCTL_PSM_RUN));

	mi = FUNC2(core, FUNC0(macintstatus));
	FUNC1(mi & MI_MACSSPNDD);

	FUNC5(wlc_hw,
					  BRCMS_WAKE_OVERRIDE_MACSUSPEND);
}