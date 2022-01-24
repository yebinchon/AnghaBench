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
struct brcms_hardware {int shortslot; int /*<<< orphan*/  wlc; scalar_t__ up; TYPE_1__* band; } ;
struct TYPE_2__ {scalar_t__ bandtype; } ;

/* Variables and functions */
 scalar_t__ BRCM_BAND_2G ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_hardware *wlc_hw, bool shortslot)
{
	wlc_hw->shortslot = shortslot;

	if (wlc_hw->band->bandtype == BRCM_BAND_2G && wlc_hw->up) {
		FUNC2(wlc_hw->wlc);
		FUNC0(wlc_hw, shortslot);
		FUNC1(wlc_hw->wlc);
	}
}