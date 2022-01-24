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
typedef  int /*<<< orphan*/  uint ;
struct brcms_info {int resched; TYPE_2__* pub; TYPE_3__* wlc; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int up; int /*<<< orphan*/  unit; } ;
struct TYPE_4__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

uint FUNC2(struct brcms_info *wl)
{
	FUNC1(wl->wlc->hw->d11core, "Resetting wl%d\n", wl->pub->unit);
	FUNC0(wl->wlc);

	/* dpc will not be rescheduled */
	wl->resched = false;

	/* inform publicly that interface is down */
	wl->pub->up = false;

	return 0;
}