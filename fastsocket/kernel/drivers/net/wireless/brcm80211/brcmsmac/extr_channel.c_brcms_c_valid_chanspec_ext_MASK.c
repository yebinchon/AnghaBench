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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_cm_info {struct brcms_c_info* wlc; } ;
struct brcms_c_info {TYPE_2__* pub; TYPE_1__* hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  unit; } ;
struct TYPE_3__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct brcms_cm_info *wlc_cm, u16 chspec)
{
	struct brcms_c_info *wlc = wlc_cm->wlc;
	u8 channel = FUNC1(chspec);

	/* check the chanspec */
	if (FUNC2(chspec)) {
		FUNC3(wlc->hw->d11core, "wl%d: malformed chanspec 0x%x\n",
			  wlc->pub->unit, chspec);
		return false;
	}

	if (FUNC0(wlc_cm->wlc, channel) !=
	    FUNC4(chspec))
		return false;

	return true;
}