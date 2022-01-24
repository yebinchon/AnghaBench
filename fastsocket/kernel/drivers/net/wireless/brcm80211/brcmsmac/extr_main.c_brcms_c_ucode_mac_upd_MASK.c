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
struct brcms_c_info {scalar_t__ home_chanspec; int /*<<< orphan*/  hw; TYPE_2__* band; TYPE_1__* pub; } ;
struct TYPE_4__ {int /*<<< orphan*/  pi; } ;
struct TYPE_3__ {scalar_t__ associated; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  M_BCN_TXTSF_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_c_info *wlc)
{
	/* enable or disable any active IBSSs depending on whether or not
	 * we are on the home channel
	 */
	if (wlc->home_chanspec == FUNC2(wlc->band->pi)) {
		if (wlc->pub->associated) {
			/*
			 * BMAC_NOTE: This is something that should be fixed
			 * in ucode inits. I think that the ucode inits set
			 * up the bcn templates and shm values with a bogus
			 * beacon. This should not be done in the inits. If
			 * ucode needs to set up a beacon for testing, the
			 * test routines should write it down, not expect the
			 * inits to populate a bogus beacon.
			 */
			if (FUNC0(wlc->band))
				FUNC1(wlc->hw,
						M_BCN_TXTSF_OFFSET, 0);
		}
	} else {
		/* disable an active IBSS if we are not on the home channel */
	}
}