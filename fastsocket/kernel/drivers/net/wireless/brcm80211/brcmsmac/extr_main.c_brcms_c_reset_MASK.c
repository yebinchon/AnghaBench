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
struct macstat {int dummy; } ;
struct brcms_c_info {TYPE_3__* hw; TYPE_2__* core; TYPE_1__* pub; } ;
struct TYPE_6__ {int /*<<< orphan*/  d11core; } ;
struct TYPE_5__ {int /*<<< orphan*/  macstat_snapshot; } ;
struct TYPE_4__ {int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct brcms_c_info *wlc)
{
	FUNC2(wlc->hw->d11core, "wl%d\n", wlc->pub->unit);

	/* slurp up hw mac counters before core reset */
	FUNC1(wlc);

	/* reset our snapshot of macstat counters */
	FUNC3(wlc->core->macstat_snapshot, 0, sizeof(struct macstat));

	FUNC0(wlc->hw);
}