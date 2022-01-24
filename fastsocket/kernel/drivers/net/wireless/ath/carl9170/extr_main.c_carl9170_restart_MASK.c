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
struct ar9170 {int last_reason; int force_usb_reset; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  hw; scalar_t__ needs_full_reset; int /*<<< orphan*/  registered; TYPE_1__* udev; int /*<<< orphan*/  pending_restarts; } ;
typedef  enum carl9170_restart_reasons { ____Placeholder_carl9170_restart_reasons } carl9170_restart_reasons ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_IDLE ; 
 int const CARL9170_RR_NO_REASON ; 
 int /*<<< orphan*/  CARL9170_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int const __CARL9170_RR_LAST ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct ar9170 *ar, const enum carl9170_restart_reasons r)
{
	FUNC3(ar, CARL9170_STARTED, CARL9170_IDLE);

	/*
	 * Sometimes, an error can trigger several different reset events.
	 * By ignoring these *surplus* reset events, the device won't be
	 * killed again, right after it has recovered.
	 */
	if (FUNC2(&ar->pending_restarts) > 1) {
		FUNC4(&ar->udev->dev, "ignoring restart (%d)\n", r);
		return;
	}

	FUNC7(ar->hw);

	FUNC5(&ar->udev->dev, "restart device (%d)\n", r);

	if (!FUNC1(r == CARL9170_RR_NO_REASON) ||
	    !FUNC1(r >= __CARL9170_RR_LAST))
		ar->last_reason = r;

	if (!ar->registered)
		return;

	if (!FUNC0(ar) || ar->needs_full_reset)
		ar->force_usb_reset = true;

	FUNC6(ar->hw, &ar->restart_work);

	/*
	 * At this point, the device instance might have vanished/disabled.
	 * So, don't put any code which access the ar9170 struct
	 * without proper protection.
	 */
}