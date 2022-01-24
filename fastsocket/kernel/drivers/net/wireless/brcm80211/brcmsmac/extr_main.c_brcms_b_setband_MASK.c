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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_hardware {int /*<<< orphan*/  d11core; int /*<<< orphan*/  up; struct brcms_c_info* wlc; } ;
struct brcms_c_info {int /*<<< orphan*/  wl; scalar_t__ macintstatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 scalar_t__ MI_DMAINT ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 

__attribute__((used)) static void FUNC10(struct brcms_hardware *wlc_hw, uint bandunit,
			    u16 chanspec) {
	struct brcms_c_info *wlc = wlc_hw->wlc;
	u32 macintmask;

	/* Enable the d11 core before accessing it */
	if (!FUNC3(wlc_hw->d11core)) {
		FUNC2(wlc_hw->d11core, 0);
		FUNC7(wlc_hw);
	}

	macintmask = FUNC8(wlc, bandunit);

	if (!wlc_hw->up)
		return;

	FUNC6(wlc_hw, ON);

	/* band-specific initializations */
	FUNC5(wlc, chanspec);

	/*
	 * If there are any pending software interrupt bits,
	 * then replace these with a harmless nonzero value
	 * so brcms_c_dpc() will re-enable interrupts when done.
	 */
	if (wlc->macintstatus)
		wlc->macintstatus = MI_DMAINT;

	/* restore macintmask */
	FUNC9(wlc->wl, macintmask);

	/* ucode should still be suspended.. */
	FUNC1((FUNC4(wlc_hw->d11core, FUNC0(maccontrol)) &
		 MCTL_EN_MAC) != 0);
}